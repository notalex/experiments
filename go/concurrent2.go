package main

import "fmt"

func sum(list []int, channel chan int) {
  sum := 0

  for _, v := range list {
    sum += v
  }

  channel <- sum
}

func main() {
  list := []int{7, 2, 8, -9, 4, 0}
  channel := make(chan int)
  listSize := len(list) / 2

  go sum(list[:listSize], channel)
  go sum(list[listSize:], channel)

  x, y := <-channel, <-channel
  fmt.Println(x, y, x + y)
}
