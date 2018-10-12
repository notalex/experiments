package main

import "fmt"
import "os"
// import "runtime"

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

func fibSeq(n int, order string) {
  fmt.Println("Fiber started")

  list := reverseRange(0, n)
  file, _ := os.Create("/tmp/go-fib-" + order)
  for number := range list {
    fibStringValue := fmt.Sprintf("%d\n", fib(number))
    file.WriteString(fibStringValue)
  }
  file.Close()
}

func main() {
  // runtime.GOMAXPROCS(runtime.NumCPU() * 2)
  go fibSeq(44, "1")
  go fibSeq(44, "2")
}
