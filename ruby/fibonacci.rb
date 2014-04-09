# 0 1 1 2 3 5 8 13

array = [0, 1]

10.times do |n|
  array.push(array[n - 1] + array[n])
end

p array
