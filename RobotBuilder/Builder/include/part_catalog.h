#pragma once
#include "part_definition.hpp"
#include <string>
namespace parts {
void init(const std::string &parts_directory);
void build_ui();
void deconstruct();
} // namespace parts
