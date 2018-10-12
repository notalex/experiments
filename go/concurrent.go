package main

import "fmt"
import "time"

func say(s string) {
  for i := 0; i < 5; i++ {
    time.Sleep(100000000)
    fmt.Println(s)
  }
}

func main() {
  go say("world")
  say("hello")
}
