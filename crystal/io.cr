def fib(n)
  return n if n <= 1

  fib(n - 2) + fib(n - 1)
end

def fib_seq(n, order)
  puts "Fiber started"

  file = File.open("/tmp/crystal-fib-#{order}", "w")
  list = (0..n).to_a.reverse
  list.each do |number|
    file.puts fib(number)
  end
  file.close
end

Process.fork do
  fib_seq(44, 1)
end

Process.fork do
  fib_seq(44, 2)
end

"""
crystal: 2.7mb 50secs
go:      1.7mb 35secs

With fork
crystal: 0.8mb 23secs
"""
