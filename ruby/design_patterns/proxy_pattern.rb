class Person
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

 def person
   @person ||= Person.new
 end
end

p = PersonProxy.new
puts p.name
p.printer('al', 'ex')
