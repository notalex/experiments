def array
  %w(a b c)
end

def output(passed_index)
  length = array.size
  index = passed_index - ((passed_index/length) * length)
  print array[index]
  print ' '
end

(ARGV[0].to_i..ARGV[1].to_i).each do |offset_index|
  output offset_index
end

print "\n"
