package main

import (
	"flag"
	"fmt"
	"time"
)

func main() {
	var num_m = flag.Int("n", 2, "start how many goroutines")
	var time_delay = flag.Int("d", 3600, "sleep how many seconds after start all goroutines")
	flag.Parse()

	i := 0
	for i = 0; i < *num_m; i++ {
		go func() {
			for {
			}
		}()
	}

	fmt.Printf("start %d goroutines\n", i)

	//	var b byte
	//	fmt.Scanf("%c", &b)
	time.Sleep(time.Duration(*time_delay) * time.Second)
}
