#pragma once
#include <string>
#include <map>
#include <stdint.h>

namespace sim{ namespace font{
	typedef struct
	{
		int size;
		int height;
		std::string name;
	} font_info;

	typedef struct
	{
		int x;
		int width;
	} glyph_info;

}}