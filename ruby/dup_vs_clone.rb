o = Object.new

def o.foo
  42
end

p o.dup.object_id
p o.dup.foo
