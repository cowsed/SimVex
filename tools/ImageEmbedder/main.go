package main

import (
	"flag"
	"fmt"
	"image"
	"image/draw"
	_ "image/jpeg"
	_ "image/png"
	"os"
	"path/filepath"
	"strings"
)

func usage() {
	fmt.Fprintf(os.Stderr, "usage: %s [inputfile]\n", os.Args[0])
	flag.PrintDefaults()
	os.Exit(2)
}

func main() {
	flag.Usage = usage
	flag.Parse()

	args := flag.Args()
	if len(args) < 1 {
		fmt.Println("Input File is missing")
		usage()
	}


	var make_header bool = true

	input_file := args[0]
	name := strings.TrimSuffix(filepath.Base(input_file), filepath.Ext(input_file))


	image_type:="const sim::Image"
	header_header:="#pragma once\n#include \"sim/graphics/images/image.h\"\n\n"
	src_header:=fmt.Sprintf("#include \"sim/graphics/images/default_skybox/%s.h\"\n", name)



	output_file := name + ".cpp"
	output_header := name + ".h"
	outf, err := os.Create(output_file)
	outh, err := os.Create(output_header)
	check(err)

	fmt.Println(input_file, "->", output_file)

	f, err := os.Open(input_file)
	check(err)
	raw, _, err := image.Decode(f)
	check(err)

	src := raw
	b := src.Bounds()
	img := image.NewRGBA(image.Rect(0, 0, b.Dx(), b.Dy()))
	draw.Draw(img, img.Bounds(), src, b.Min, draw.Src)

	check(err)
	fmt.Fprintf(outf, "#include <stdint.h>\n")
	fmt.Fprintf(outf, src_header);
	fmt.Fprintf(outf, "// file: %s\n", input_file)

	fmt.Fprintf(outf, "unsigned int %s_width = %d;\n", name, img.Bounds().Dx())
	fmt.Fprintf(outf, "unsigned int %s_height = %d;\n", name, img.Bounds().Dy())
	fmt.Fprintf(outf, "uint32_t %s_image_data[%d] = {", name, img.Bounds().Dx()*img.Bounds().Dy())


	sb:=strings.Builder{}


	for y := 0; y < img.Bounds().Dy(); y++ {
		for x := 0; x < img.Bounds().Dx(); x++ {
			col := img.RGBAAt(x, y)

			sb.WriteString(fmt.Sprintf("0x%02x%02x%02x%02x", uint8(col.R), uint8(col.G), uint8(col.B), uint8(col.A)))
			if !(x == img.Bounds().Dx()-1 && y == img.Bounds().Dy()-1) {
				sb.WriteString(", ")
			}
		}
	}
	fmt.Fprint(outf, sb.String())
	fmt.Fprint(outf, "};\n")

	fmt.Fprintf(outf, "%s %s = {.width = %s_width, .height = %s_height, .image_data = %s_image_data};\n", image_type, name, name, name, name)


	if (make_header){
		fmt.Fprintf(outh, "%s\n", header_header)
		fmt.Fprintf(outh, "extern %s %s;", image_type, name)
	}

}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
