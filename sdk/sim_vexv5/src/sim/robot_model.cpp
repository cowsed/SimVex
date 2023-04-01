#include "sim/robot_model.h"
namespace sim
{
    namespace construction
    {
        using json = nlohmann::json;
        static const std::string robot_filename = "robot_construction.json";
        static const robot_model *this_robot;

        auto red_color = "\033[1;31m";
        auto reset_color = "\033[0m\n";

        std::map<structure_id, Structure> structures_from_json(json &data, int num_expected, bool &error_occured)
        {
            std::vector<json> datas = data["structures"];
            if (datas.size() != num_expected)
            {
                std::cout << red_color << "Mismatch between num_structures and actual number of structures in " << robot_filename << reset_color<< std::endl;
                error_occured = true;
                return {};
            }
            return {};
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
            if (had_error){return;}

#undef FROM_JSON
        }

        bool setup()
        {
            std::cout << "Loading model from " << robot_filename << std::endl;
            bool error_occured = false;
            this_robot = new robot_model(robot_filename, error_occured);
            if (error_occured){
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
    }
}