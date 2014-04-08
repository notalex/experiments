class Person
  def meth1(*args)
    puts args.inspect
  end
end

array = ['al', 'ex']
p = Person.new
p.meth1(array)
