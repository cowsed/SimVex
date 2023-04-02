#include "sim/robot_model.h"
namespace sim
{
    namespace construction
    {

        cylinder_shape::cylinder_shape(double radius, double height, int segments)
        {
            points = std::vector<glm::vec3>(2 * (segments + 1));
            points[0] = glm::vec3(0, 0, 0);
            points[segments + 1] = glm::vec3(0, height, 0);

            normals = std::vector<glm::vec3>(segments + 2);
            normals[0] = glm::vec3(0, -1, 0);
            normals[1] = glm::vec3(0, 1, 0);

            for (int i = 0; i < segments; i++)
            {
                double ang = 2 * M_PI * (double)i / (double)segments;
                double x = radius * cos(ang);
                double z = radius * sin(ang);

                points[i + 1] = glm::vec3(x, 0, z);
                points[(segments + 2) + i] = glm::vec3(x, height, z);

                normals[2 + i] = glm::vec3(cos(ang), 0, sin(ang));
            }
            // assemble faces with normal
            // assemble faces with normal
            const int indices_per_tri = 3 + 3; // vec3 pos, vec3 norm
            // segments top, segments bottom. 2 * segments for side faces - each face has 2 tris
            const int num_tris = (segments * 2) + (segments * 2);
            std::vector<unsigned int> indices(num_tris * indices_per_tri);

            glGenBuffers(1, &points_vbo);
            glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
            glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &points[0], GL_STATIC_DRAW);

            glGenBuffers(1, &normal_vbo);
            glBindBuffer(GL_ARRAY_BUFFER, normal_vbo);
            glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &normals[0], GL_STATIC_DRAW);

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL); 
            glBindBuffer(GL_ARRAY_BUFFER, normal_vbo);
            glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, NULL);
        }
        cylinder_shape::~cylinder_shape() {}
        void cylinder_shape::render(glm::mat4 mat, renderer::RenderTarget rt) {} 
 
        using json = nlohmann::json;
        static const std::string robot_filename = "robot_construction.json";
        static const robot_model *this_robot;

        auto red_color = "\033[1;31m";
        auto reset_color = "\033[0m\n";

        /// @brief load a vec3 from json
        /// @param data json object of the form [x, y, z]
        /// @return vec3 specified by x, y, z
        glm::vec3 vec3_from_json(json &data)
        {
            return glm::vec3(data[0], data[1], data[2]);
        }
        /// @brief load a quaternion from json
        /// @param data json object of the form [w, x, y, z]
        /// @return quat specified by w, x, y, z
        glm::quat quat_from_json(json &data)
        {
            return glm::quat(data[0], data[1], data[2], data[3]);
        }
        /// @brief load a Location struct from a json object
        /// @param data json object of the form {"positon": [x, y, z], "orientation": [w, x, y, z]}
        /// @return Location struct
        Location location_from_json(json &data)
        {
            return Location{
                .p = vec3_from_json(data["position"]),
                .o = quat_from_json(data["orientation"])};
        }
        Shape cylinder_from_json(json &data, bool &error_occured)
        {
            double radius = data["radius"];
            double height = data["height"];
            double segments = data["segments"];
            return cylinder_shape(radius, height, segments);
        }
        Shape shape_from_json(json &data, bool &error_occured)
        {
            std::string st = data["shape_type"];
            if (st == "cylinder")
            {
                Shape s = cylinder_from_json(data, error_occured);
                return s;
            }
            else
            {
                std::cout << red_color << "unknown shape type in " << robot_filename << reset_color << std::endl;
                error_occured = true;
            }
            return Shape{};
        }

        std::map<structure_id, Structure> structures_from_json(json &data, int num_expected, bool &error_occured)
        {
            std::vector<json> datas = data["structures"];
            if (datas.size() != num_expected)
            {
                std::cout << red_color << "Mismatch between num_structures and actual number of structures in " << robot_filename << reset_color << std::endl;
                error_occured = true;
                return {};
            }

            std::map<structure_id, Structure> structures;

            for (auto &d : datas)
            {
                Structure s = Structure{};
                s.id = d["id"];
                s.name = d["name"];
                s.origin_loc = location_from_json(d["origin_location"]);
                s.shape = shape_from_json(d["shape"], error_occured);
                if (structures.count(s.id) > 0)
                {
                    std::cout << red_color << "Two structures with the same id: " << s.id << reset_color << std::endl;
                    error_occured = true;
                    return {};
                }
                structures[s.id] = s;
            }

            return structures;
        }

        robot_model::robot_model(std::string filename, bool &had_error)
        {
#define FROM_JSON(name) name = data[#name]
            std::ifstream f(filename);
            json data = json::parse(f);

            FROM_JSON(version_major);
            FROM_JSON(version_minor);
            FROM_JSON(robot_name);
            FROM_JSON(date_modified);

            FROM_JSON(num_structures);
            FROM_JSON(num_joints);
            FROM_JSON(num_effectors);

            structures = structures_from_json(data, num_structures, had_error);
            if (had_error)
            {
                return;
            }

#undef FROM_JSON
        }

        bool setup()
        {
            std::cout << "Loading model from " << robot_filename << std::endl;
            bool error_occured = false;
            this_robot = new robot_model(robot_filename, error_occured);
            if (error_occured)
            {
                std::cout << red_color << "Failed loading model" << reset_color << std::endl;
                return false;
            }
            std::cout << "Finished loading model from " << robot_filename << std::endl;
            return true;
        }
        void cleanup()
        {
            delete this_robot;
        }
        void drawUI()
        {
            ImGui::Begin("Robot Construction");
            ImGui::Text("%s", this_robot->robot_name.c_str());
            if (ImGui::CollapsingHeader("Structures", ImGuiTreeNodeFlags_DefaultOpen))
            {
                ImGui::Text("Count: %d", this_robot->num_structures);
                for (auto &s : this_robot->structures)
                {
                    ImGui::Separator();
                    ImGui::LabelText("name", "%s", s.second.name.c_str());
                    ImGui::LabelText("id", "%d", s.second.id);
                }
            }
            ImGui::End();
        }
    } // construction
} // sim