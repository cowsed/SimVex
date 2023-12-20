#include "part_definition.hpp"

#include <filesystem>
#include <fstream>
#include <iostream>

#include "gfx_util.hpp"
#include "image_load.hpp"
#include "imgui.h"
#include "nlohmann/json.hpp"

#include "objgl2.h"

struct NoSuchModelPath {};
struct NoSuchModelPartSpec {};
struct NoTextureFallBack {};
struct NoPartIndexFound {};
struct NoOBJShader {};
struct OBJLoadFailed {};

std::optional<GLuint> fallback_preview_texture = {};
std::optional<GLuint> obj_shader = {};

VexPartDefinition::~VexPartDefinition() {
    glDeleteBuffers(1, &my_info->vbo);
    glDeleteBuffers(1, &my_info->ibo);
    glDeleteVertexArrays(1, &my_info->vao);
    std::cout << "DELETING" << std::endl;
}
struct MovingIntoFullPartDefinition {};

VexPartDefinition::VexPartDefinition(VexPartDefinition &&other) {
    if (my_info.has_value()) {
        throw MovingIntoFullPartDefinition{};
    }

    my_name = std::move(other.my_name);
    serial_num = std::move(other.serial_num);
    my_categories = std::move(other.my_categories);
    links = std::move(other.links);
    preview_tex = other.preview_tex;

    my_info = GLInfo{};
    my_info->vao = other.my_info->vao;
    my_info->ibo = other.my_info->ibo;
    my_info->vbo = other.my_info->vbo;

    other.my_info = std::nullopt;
}

VexPartDefinition::VexPartDefinition(const std::string &folder_path) {
    if (!fallback_preview_texture.has_value()) {
        fallback_preview_texture = load_image_to_opengl(modeller::parts_directory
                                                        + "no_texture.png");
        if (!fallback_preview_texture.has_value()) {
            throw NoTextureFallBack{};
        }
    } // from now fallback_texture is there

    if (!obj_shader.has_value()) {
        std::string shader_folder = modeller::parts_directory
                                    + "../RobotBuilder/Builder/src/shaders/";
        obj_shader = build_program(shader_folder + "obj.vert", shader_folder + "obj.frag");
        if (!obj_shader.has_value()) {
            throw NoOBJShader{};
        }
    }

    if (!std::filesystem::exists(folder_path)) {
        throw NoSuchModelPath{};
    }

    const std::string part_def_path = folder_path + "/part.json";
    if (!std::filesystem::exists(folder_path)) {
        throw NoSuchModelPartSpec{};
    }

    using json = nlohmann::json;

    std::ifstream f(part_def_path);
    json data = json::parse(f);

    my_name = data["name"];
    serial_num = data["number"];
    data.at("categories").get_to(my_categories);

    const std::string preview_path = folder_path + "/preview.png";
    std::cout << preview_path << " loading" << std::endl;
    preview_tex = load_image_to_opengl(preview_path).value_or(fallback_preview_texture.value());

    obj_file = folder_path + "/" + data["model"].get<std::string>();
}

void VexPartDefinition::load_obj() {
    // if already read
    if (my_info.has_value()) {
        return;
    }

    // read buffer
    std::ifstream file(obj_file);
    std::ostringstream ss;
    ss << file.rdbuf();
    const std::string &s = ss.str();
    std::vector<char> vec(s.begin(), s.end());

    unsigned int bufferSize = 65536;
    char *fname = (char *) malloc(obj_file.size() + 1);
    strcpy(fname, obj_file.c_str());

    objgl2StreamInfo strinfo = objgl2_init_filestream(fname, bufferSize);
    objgl2Data data = objgl2_readobj(&strinfo);

    printf("numIndices: %d\n", data.numIndices);
    printf("numVertices: %d\n", data.numVertices);
    printf("normals: %d", (int) data.hasNormals);
    printf("uvs: %d", (int) data.hasTexCoords);

    GLuint VAO;
    glGenVertexArrays(1, &VAO);

    glBindVertexArray(VAO);

    GLuint VBO;
    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, data.numVertices * 8 * sizeof(float), data.data, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *) 0);
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *) (3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    glVertexAttribPointer(2, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void *) (5 * sizeof(float)));
    glEnableVertexAttribArray(2);

    GLuint EBO;
    glGenBuffers(1, &EBO);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,
                 data.numIndices * sizeof(unsigned int),
                 data.indices,
                 GL_STATIC_DRAW);

    my_info = {.vao = VAO, .vbo = VBO, .ibo = EBO, .num_indices = data.numIndices};
}

std::string VexPartDefinition::name() const {
    return my_name;
}

bool VexPartDefinition::build_preview_ui() {
    bool clicked = false;
    ImGui::Image((ImTextureID) preview_tex, {100, 100});
    clicked |= ImGui::IsItemClicked(ImGuiMouseButton_Left);
    ImGui::TextWrapped("%s", my_name.c_str());
    clicked |= ImGui::IsItemClicked(ImGuiMouseButton_Left);
    return clicked;
}

std::vector<std::unique_ptr<VexPartDefinition>> load_parts_from_index(
    const std::string &part_directory) {
    if (!std::filesystem::exists(part_directory + "part_index.json")) {
        throw NoPartIndexFound{};
    }

    using json = nlohmann::json;

    std::ifstream f(part_directory + "part_index.json");
    json data = json::parse(f);
    int num = data["number"];
    std::vector<std::string> names(num);
    data.at("parts").get_to(names);

    std::vector<std::unique_ptr<VexPartDefinition>> pds;
    for (const auto &name : names) {
        std::string fname = part_directory + name;
        pds.push_back(std::make_unique<VexPartDefinition>(fname));
    }

    return pds;
}
void VexPartDefinition::gl_render(modeller::RenderInfo ri) {
    if (!my_info.has_value()) {
        std::cout << "not here" << std::endl;
        return;
    }
    GLInfo info = my_info.value();
    printf("VAO: %d - IBO %d\n", info.vao, info.ibo);
    glBindVertexArray(info.vao);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, info.ibo);

    glUseProgram(obj_shader.value());

    int model_pos = glGetUniformLocation(obj_shader.value(), "model");
    glUniformMatrix4fv(model_pos, 1, false, (float *) &ri.model[0]);

    int view_pos = glGetUniformLocation(obj_shader.value(), "view");
    glUniformMatrix4fv(view_pos, 1, false, (float *) &ri.view[0]);

    int proj_pos = glGetUniformLocation(obj_shader.value(), "proj");
    glUniformMatrix4fv(proj_pos, 1, false, (float *) &ri.proj[0]);

    // Index buffer

    glDrawElements(GL_TRIANGLES, info.num_indices, GL_UNSIGNED_INT, 0);

    // Draw the triangles !
    //    glDrawElements(GL_TRIANGLES,     // mode
    //                   info.num_indices, // count
    //                   GL_UNSIGNED_INT,  // type
    //                   (void *) 0        // element array buffer offset
    //    );
}

void VexPartDefinition::release_preview() {
    glDeleteTextures(1, &preview_tex);
}
