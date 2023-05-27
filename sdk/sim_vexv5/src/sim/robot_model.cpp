#include "sim/robot_model.h"
namespace sim
{
    namespace construction
    {
        std::map<std::string, unsigned int> texture_cache;
        unsigned int load_texture(std::string filepath)
        {
            return -1;
        }

        void load_model()
        {
            std::string path = "Contstruction/V5_Brain.obj";
            Assimp::Importer import;
            const aiScene *scene = import.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs);
            if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode)
            {
                std::cout << "ERROR::ASSIMP::" << import.GetErrorString() << std::endl;
                return;
            }  else {
                std::cout << "Success ASSIMP\n";
            }
        }
        void setup(){
            load_model();
        }
    } // construction
} // sim