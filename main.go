package main

import (
	"fmt"
	"os"
	"sort"
)

func main() {
	env := os.Environ()
	sort.Strings(env)
	for _, kv := range env {
		fmt.Println(kv)
	}
}
