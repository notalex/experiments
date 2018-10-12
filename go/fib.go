package main

import "fmt"

func reverseRange(min, max int) []int {
    a := make([]int, max-min+1)
    for i := range a {
        a[i] = max - i
    }
    return a
}

func fib(n int) int {
  if n <= 1 {
    return n
  }

  return fib(n - 2) + fib(n - 1)
}

func fibSeq(n int, channel chan []int) {
  fmt.Println("Fiber started")

  sequence := reverseRange(0, n)
  for i := range sequence {
    sequence[i] = fib(i)
  }

  channel <- sequence
}

func main() {
  channel := make(chan []int)

  go fibSeq(44, channel)
  go fibSeq(44, channel)

  fmt.Println(<-channel)
  fmt.Println(<-channel)
}
