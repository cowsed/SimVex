#pragma once

#include <GL/glew.h>
#include <string>
#include <vector>

#include "model.hpp"
#include "part_instance.hpp"

class PartInstance;

class VexPartDefinition {
public:
    struct GLInfo {
        GLuint vao, vbo, ibo, tex;
        GLuint num_indices;
    };

    VexPartDefinition(const std::string &folder_path);
    ~VexPartDefinition() = default;
    void load_obj();
    std::string name() const;
    const std::vector<std::string> &categories() { return my_categories; }

    PartInstance make_instance() const;

    bool build_preview_ui();

    void gl_render(modeller::RenderInfo ri);

private:
    std::string my_name;
    std::string serial_num;
    std::vector<std::string> my_categories;
    std::vector<modeller::Link::LinkPoint> links;
    GLuint preview_tex;
    std::string obj_file;
    std::optional<GLInfo> my_info = {};
};

std::vector<VexPartDefinition> load_parts_from_index(const std::string &part_index_path);
