package main

import "os"

func main(){

	f, _:=os.Create("all.txt")
	bs:=make([]byte, 256)
	for i:=0; i < 256; i++{
		bs[i] = byte(i)
	}
	f.Write(bs)
	f.Close()
}
