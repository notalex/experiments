def fun_one
  10.times do |i|
    sleep 2
    puts "fun_one: #{ i }"
  end
end

def fun_two
  10.times do |i|
    sleep 1
    puts "fun_two: #{ i }"
  end
end

puts 'Starting program'
t1 = Thread.new{ fun_one }
t2 = Thread.new{ fun_two }
t1.join
t2.join
puts 'Ending all'
