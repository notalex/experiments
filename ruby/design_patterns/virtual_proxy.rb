class Person
 def initialize
   puts 'person object created'
 end

 def name
   'alex'
 end

 def printer(arg1, arg2)
   print "#{ arg1 }--#{ arg2 }\n"
 end
end

class PersonProxy
 def method_missing(meth_name, *args)
   person.send(meth_name, *args)
 end

private
 def person
   @person ||= Person.new
 end
end

p = PersonProxy.new
p.name
