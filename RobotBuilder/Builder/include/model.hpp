#pragma once
#include <glm/gtc/quaternion.hpp>
#include <optional>
#include <string>
#include <variant>

namespace modeller {
const std::string parts_directory = "/home/richie/VEX/Sim/Parts/";

bool name_exists(const std::string &name);

struct RenderInfo {
    glm::mat4 model;
    glm::mat4 view;
    glm::mat4 proj;
};

struct Link {
    struct LinkPoint {
        glm::vec3 pos;
        glm::quat orientation;
    };
    struct FixedLink {
        std::optional<glm::vec3> offset;
    };

    struct RotationalLink {
        std::optional<double> lower_limit;
        std::optional<double> upper_limit;
    };
    struct SliderLink {
        std::optional<double> lower_limit;
        std::optional<double> upper_limit;
    };

    struct PlaneLink {
        std::optional<double> lower_x_limit;
        std::optional<double> lower_y_limit;
        std::optional<double> upper_x_limit;
        std::optional<double> upper_y_limit;
    };

    using LinkIndex = int;

    const std::string &parent;
    const LinkPoint parent_link_point;
    const std::string &child;
    const LinkPoint child_link_point;

    std::variant<FixedLink, RotationalLink> link_type;
};

} // namespace modeller
