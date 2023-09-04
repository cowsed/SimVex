#include "part_catalog.h"
#include "imgui.h"
#include <iostream>
#include <vector>

namespace parts {
const int search_bar_buf_size = 100;
char search_bar_buf[search_bar_buf_size] = "";
std::vector<VexPartDefinition> pds;

void init(const std::string &parts_directory) {
    pds = load_parts_from_index(modeller::parts_directory);
    pds[0].load_obj();
}
glm::vec3 eye = {.15, 0, 0};
glm::vec3 center = {0, 0, 0};

void build_ui() {
    modeller::RenderInfo ri = {.model = glm::identity<glm::mat4>(),
                               .view = glm::lookAt(eye, center, glm::vec3{0, 0, 1}),
                               .proj = glm::perspective(M_PI / 2.0, 1.0, 0.1, 100.0)};

    pds[0].gl_render(ri);

    ImGui::Begin("Part Catalog");
    ImGui::DragFloat3("eye", (float *) &eye, 0.001);
    ImGui::DragFloat3("center", (float *) &center, 0.001);

    ImGui::PushStyleColor(ImGuiCol_FrameBg, ImVec4{0.3, 0.3, 0.3, 0.54});
    ImGui::InputText("Search", search_bar_buf, search_bar_buf_size);
    ImGui::PopStyleColor();
    ImGui::Separator();

    const int avail_width = ImGui::GetWindowSize().x;
    const int preview_size = 100 + 10;

    int num_cols = avail_width / preview_size;
    if (num_cols < 1) {
        num_cols = 1;
    }

    int part_num = 0;
    if (ImGui::BeginTable("parts_table", num_cols)) {
        for (auto p : pds) {
            if (part_num % num_cols == 0) {
                ImGui::TableNextRow();
            }

            ImGui::TableNextColumn();
            bool clicked = p.build_preview_ui();
            if (clicked) {
                std::cout << "pressed" << std::endl;
            }
            part_num++;
        }
        ImGui::EndTable();
    }
    ImGui::End();
}
} // namespace parts
