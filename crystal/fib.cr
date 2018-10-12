def fib(n)
  return n if n <= 1

  fib(n - 2) + fib(n - 1)
end

def fib_seq(n, channel)
  puts "Fiber started"

  list = (0..n).to_a.reverse
  sequence = list.map do |number|
    fib(number)
  end

  channel.send(sequence)
end

channel = Channel(Array(Int32)).new

spawn { fib_seq(44, channel) }
spawn { fib_seq(44, channel) }

puts channel.receive.inspect
puts channel.receive.inspect
