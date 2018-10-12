def fib(n)
  return n if n <= 1

  fib(n - 2) + fib(n - 1)
end

def fib_seq(n, channel, order)
  puts "Fiber started"

  file = File.open("/tmp/crystal-fib-#{order}", "w")
  list = (0..n).to_a.reverse
  list.each do |number|
    file.puts fib(number)
  end
  file.close

  channel.send(1)
end

channel = Channel(Int32).new

spawn { fib_seq(44, channel, 1) }
spawn { fib_seq(44, channel, 2) }

puts channel.receive
puts channel.receive
