#include <stdint.h>

struct RenderTarget{
    /// @brief handles to opengl buffers
    uint32_t depth_handle;
    uint32_t color_handle;
    uint32_t data_handle;

    void activate();
};