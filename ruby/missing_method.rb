class Person
  def method_missing(method_name, *args)
    puts method_name.class
    puts "#{ method_name } called with the arguments #{ args.join(', ') }"
  end
end

p = Person.new
p.hell('al', 'ex')
