#include "model.hpp"
#include "part_instance.hpp"
#include <map>
#include <vector>

namespace modeller {

std::map<const std::string, PartInstance> parts;
std::vector<Link> links;

bool name_exists(const std::string &name) {
    return parts.count(name) > 0;
}
} // namespace modeller
