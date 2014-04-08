f = Fiber.new do
  puts 'some code'
  param = Fiber.yield 'return' # sent parameter, received parameter
  puts "received param: #{param}"
  Fiber.yield #nothing sent, nothing received 
  puts 'etc'
end

puts f.resume
f.resume 'param'
f.resume
