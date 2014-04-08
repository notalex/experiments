def create_block(i, &block)
  block 
end

x = create_block(5252) {|i| puts i}
x[25]         # x[] is alternative to x.call

#######

p1 = -> i, j {i.to_s + j.to_s}
p2 = Proc.new{|i, j| i.to_s + j.to_s}
p3 = lambda {|i, j| i.to_s + j.to_s}
p4 = proc {|i, j| i.to_s + j.to_s}

puts p2[4]
puts p3[4]
########

def with_return_and_proc
  prc = proc { return 'message 1' }
  prc.call
  'message 2'
end
p with_return_and_proc

def with_return_and_lambda
  prc = lambda { return 'message 1' }
  prc.call
  'message 2'
end
p with_return_and_lambda

#########
