
def meth(value)
  yield({key1: value})
end

meth('alex') do |hsh|
  hsh.store :key2, 'johnson'
  puts hsh
end
