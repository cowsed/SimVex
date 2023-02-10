package main

import "fmt"
import "os"
import "io"
import "time"
var file io.Writer

func sim_print(s string){
	file.Write([]byte(s))
}

func main(){
	var err error
	file, err=os.Create("real.txt");
	if err!=nil{
		panic(err)
	}

	for i:=0; i<10; i++{
		fmt.Printf("To file %d\n", i)
		sim_print(fmt.Sprintf("to stdout (through other file %d\n", i))
		time.Sleep(1 * time.Second)
	}
}
