#include "sim/robot_model.h"
namespace sim
{
    namespace construction
    {

        cylinder_shape::cylinder_shape(double radius, double height, int segments)
        {
            // point, normal - for top and bottom ring sides and caps
            const int vertex_size = 2; // units of vec3
            const int top_cap_num_verts = 1 + segments;
            const int bot_cap_num_verts = 1 + segments;
            const int side_num_verts = segments * 2;
            points = std::vector<glm::vec3>(top_cap_num_verts + bot_cap_num_verts + side_num_verts);

            points[0] = glm::vec3(0, 0, 0);
            points[1] = glm::vec3(0, -1, 0);

            points[bot_cap_num_verts] = glm::vec3(0, height, 0);
            points[bot_cap_num_verts + 1] = glm::vec3(0, 1, 0);

            const int num_cap_tris = segments;
            const int num_label_tris = 2 * segments;
            const int num_tris = num_cap_tris * 2 + num_label_tris;
            std::vector<unsigned int> elements = std::vector<unsigned int>(3 * num_tris);

            // Top and Bottom Caps
            for (int i = 0; i < segments; i++)
            {
                double ang = 2 * M_PI * (double)i / (double)segments;
                double x = radius * cos(ang);
                double z = radius * sin(ang);

                points[(1 + i) * vertex_size] = glm::vec3(x, 0, z);
                points[(1 + i) * vertex_size + 1] = glm::vec3(0, -1, 0);

                points[(1 + i + bot_cap_num_verts) * vertex_size] = glm::vec3(x, 0, z);
                points[(1 + i + bot_cap_num_verts) * vertex_size + 1] = glm::vec3(0, 1, 0);

                // bottom tri
                elements[i * 3] = 0;
                elements[i * 3] = 1 + i;
                elements[i * 3] = (i + 2) % segments;
                // top tri
                elements[num_cap_tris + i * 3] = bot_cap_num_verts;
                elements[num_cap_tris + i * 3] = (bot_cap_num_verts + 1) + i;
                elements[num_cap_tris + i * 3] = (bot_cap_num_verts + 1) + (i + 1) % segments;
            }

            glGenBuffers(1, &points_vbo);
            glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
            glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &points[0], GL_STATIC_DRAW);

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
            glEnableVertexAttribArray(0); // vert pos
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), NULL);
            glEnableVertexAttribArray(1); // vert normal
            glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), (void *)(3 * sizeof(float)));

            glGenBuffers(1, &ibo);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
            glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(elements), &elements[0], GL_STATIC_DRAW);
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
            } else if (st=="mesh-nouvs"){
                printf("IMPLEMENT THIS %s:%s", __FILE__, __PRETTY_FUNCTION__);
            }
            else
            {
                std::cout << red_color << "unknown shape type `"<<data["shape_type"]<<"` in " << robot_filename << reset_color << std::endl;
                error_occured = true;
            }
            return Shape{};
        }
        std::map<shape_id, Shape> shapes_from_json(json &data, unsigned long num_expected, bool &error_occured)
        {
            std::map<shape_id, Shape> shapes;
            if (data["shapes"].size() != num_expected)
            {
                error_occured = true;
                std::cout << red_color << "Mismatch between num_shapes and actual number of shapes in " << robot_filename <<". Expected: "<< num_expected << "Got: " << data["shapes"].size()<< reset_color << std::endl;
                return shapes;
            }
            //std::cout << "datas: " << datas <<std::endl;
            printf("loading shapes\n");
            for (auto &[key, value] : data["shapes"].items())
            {
                std::string id_str = key;
                shape_id id = atol(id_str.c_str());
                printf("shape %d\n", id);
                shapes[id] = shape_from_json(value, error_occured);
            }
            return shapes;
        }

        /// @brief load structures from json
        /// @param data json data
        /// @param num_expected expected numer of structures
        /// @param error_occured will be set to true if there was an error
        /// @return map of structures
        std::map<structure_id, Structure> structures_from_json(json &data, unsigned int num_expected, bool &error_occured)
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
                s.shape = d["shape"];
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
            FROM_JSON(num_shapes);

            // shapes = shapes_from_json(data, num_shapes, had_error);

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
                ImGui::Text("Count: %lu", this_robot->num_structures);
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