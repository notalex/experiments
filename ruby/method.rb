class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Human
  def name
    :human
  end
end

p1 = Person.new(:alex)
m = p1.method(:name)
p2 = Person.new(:pankaj)
p m.bind(p2).call
