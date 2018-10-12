def sum(list, channel)
  sum = 0

  list.each do |v|
    sum += v
  end                                # sum = list.reduce(0) { |a, e| a + e }

  channel.send(sum)
end

list = [7, 2, 8, -9, 4, 0]
channel = Channel(Int32).new
list_size = list.size / 2

spawn { sum(list[list_size..-1], channel) }
spawn { sum(list[0...list_size], channel) }

x, y = [channel.receive, channel.receive]
puts "#{x} #{y} #{x + y}"
