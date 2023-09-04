#pragma once
#include "part_definition.hpp"
#include <glm/gtc/quaternion.hpp>
#include <glm/vec3.hpp>

class VexPartDefinition;
class PartInstance {
public:
    const VexPartDefinition &def;
    std::string name();

    PartInstance(const VexPartDefinition &part_def, std::string name)
        : def(part_def), my_name(name) {}

private:
    std::string my_name;
    glm::vec3 pos;
    glm::quat orien;
};
