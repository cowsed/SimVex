#include "sim/graphics/images/default_skybox/skybox.h"

#include "sim/graphics/images/default_skybox/nx.h"
#include "sim/graphics/images/default_skybox/ny.h"
#include "sim/graphics/images/default_skybox/nz.h"
#include "sim/graphics/images/default_skybox/px.h"
#include "sim/graphics/images/default_skybox/py.h"
#include "sim/graphics/images/default_skybox/pz.h"


sim::renderer::Skybox default_skybox = {.nx = nx, .ny = ny, .nz = nz, .px = px, .py = py, .pz = pz};