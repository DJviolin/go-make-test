package main

import (
	"fmt"
)

// Variables to identify the build
var (
	Version string
	Build   string
)

func main() {
	fmt.Println("Version: ", Version)
	fmt.Println("Build Time: ", Build)
}
