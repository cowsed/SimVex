#include "part_definition.hpp"

#include <filesystem>
#include <fstream>
#include <iostream>

#include "OBJ_Loader.h"
#include "gfx_util.hpp"
#include "image_load.hpp"
#include "imgui.h"
#include "nlohmann/json.hpp"

struct NoSuchModelPath {};
struct NoSuchModelPartSpec {};
struct NoTextureFallBack {};
struct NoPartIndexFound {};
struct NoOBJShader {};
struct OBJLoadFailed {};

std::optional<GLuint> fallback_preview_texture = {};
std::optional<GLuint> obj_shader = {};

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
    if (my_info.has_value()) {
        return;
    }
    objl::Loader l;
    bool loaded = l.LoadFile(obj_file);
    if (!loaded) {
        throw OBJLoadFailed{};
    }
    objl::Mesh m = l.LoadedMeshes[0];

    GLuint vao;

    glGenVertexArrays(1, &vao);
    glBindVertexArray(vao);

    // This will identify our vertex buffer
    GLuint vbo;
    // Generate 1 buffer, put the resulting identifier in vertexbuffer
    glGenBuffers(1, &vbo);
    // The following commands will talk about our 'vertexbuffer' buffer
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    // Give our vertices to OpenGL.
    glBufferData(GL_ARRAY_BUFFER,
                 m.Vertices.size() * sizeof(objl::Vertex),
                 &m.Vertices[0],
                 GL_STATIC_DRAW);

    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glEnableVertexAttribArray(2);
    // position
    glVertexAttribPointer(0,                    // attribute
                          3,                    // size
                          GL_FLOAT,             // type
                          GL_FALSE,             // normalized?
                          sizeof(objl::Vertex), // stride
                          (void *) 0            // array buffer offset
    );
    // normal
    glVertexAttribPointer(1,                               // attribute
                          3,                               // size
                          GL_FLOAT,                        // type
                          GL_FALSE,                        // normalized?
                          sizeof(objl::Vertex),            // stride
                          (void *) (sizeof(objl::Vector3)) // array buffer offset
    );
    // uv
    glVertexAttribPointer(2,                                   // attribute
                          2,                                   // size
                          GL_FLOAT,                            // type
                          GL_FALSE,                            // normalized?
                          sizeof(objl::Vertex),                // stride
                          (void *) (2 * sizeof(objl::Vector3)) // array buffer offset
    );

    GLuint ibo;
    glGenBuffers(1, &ibo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,
                 m.Indices.size() * sizeof(unsigned int),
                 &m.Indices[0],
                 GL_STATIC_DRAW);

    glBindVertexArray(0);
    //    GLuint vao, vbo, ibo;

    //    glGenBuffers(1, &vbo);
    //    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    //    glBufferData(GL_ARRAY_BUFFER,
    //                 m.Vertices.size() * sizeof(objl::Vertex),
    //                 &(m.Vertices[0]),
    //                 GL_STATIC_DRAW);

    //    unsigned int vert_ind = 0;
    //    unsigned int norm_ind = 1;
    //    unsigned int uv_ind = 2;

    //    glGenVertexArrays(1, &vao);
    //    glBindVertexArray(vao);
    //    glBindBuffer(GL_ARRAY_BUFFER, vbo);

    //    glEnableVertexAttribArray(vert_ind); // vert pos
    //    glVertexAttribPointer(vert_ind,
    //                          3,
    //                          GL_FLOAT,
    //                          GL_FALSE,
    //                          sizeof(objl::Vertex),
    //                          (void *) (0 * sizeof(float)));

    //    glEnableVertexAttribArray(norm_ind); // vert normal
    //    glVertexAttribPointer(norm_ind,
    //                          3,
    //                          GL_FLOAT,
    //                          GL_FALSE,
    //                          sizeof(objl::Vertex),
    //                          (void *) (3 * sizeof(float)));
    //    glEnableVertexAttribArray(uv_ind); // vert UV
    //    glVertexAttribPointer(uv_ind,
    //                          2,
    //                          GL_FLOAT,
    //                          GL_FALSE,
    //                          sizeof(objl::Vertex),
    //                          (void *) (6 * sizeof(float)));

    //    glGenBuffers(1, &ibo);
    //    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
    //    glBufferData(GL_ELEMENT_ARRAY_BUFFER,
    //                 m.Indices.size() * sizeof(unsigned int),
    //                 (void *) &(m.Indices[0]),
    //                 GL_STATIC_DRAW);

    GLInfo info;
    info.vao = vao;
    info.ibo = ibo;
    info.vbo = vbo;
    info.num_indices = m.Indices.size();

    my_info = info;
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

std::vector<VexPartDefinition> load_parts_from_index(const std::string &part_directory) {
    if (!std::filesystem::exists(part_directory + "part_index.json")) {
        throw NoPartIndexFound{};
    }

    using json = nlohmann::json;

    std::ifstream f(part_directory + "part_index.json");
    json data = json::parse(f);
    int num = data["number"];
    std::vector<std::string> names(num);
    data.at("parts").get_to(names);

    std::vector<VexPartDefinition> pds;
    pds.reserve(names.size());
    for (const auto &name : names) {
        pds.emplace_back(part_directory + name);
    }

    return pds;
}
void VexPartDefinition::gl_render(modeller::RenderInfo ri) {
    if (!my_info.has_value()) {
        std::cout << "not here" << std::endl;
        return;
    }
    GLInfo info = my_info.value();
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

    // Draw the triangles !
    glDrawElements(GL_TRIANGLES,     // mode
                   info.num_indices, // count
                   GL_UNSIGNED_INT,  // type
                   (void *) 0        // element array buffer offset
    );
}
