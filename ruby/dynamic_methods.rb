class Object
  def add_method(name, &value)
    klass = class << self; self; end
    klass.send :define_method, name, &value
  end
end

class Person
end

Person.add_method :meth do
  'returned'
end
p Person.meth
