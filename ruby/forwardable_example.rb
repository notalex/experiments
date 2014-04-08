require 'forwardable'

class Human
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def age
    @name.size * 5
  end
end

class Person
  extend Forwardable
  attr_accessor :human

  def_delegators :human, :name, :age
  def_delegator :human, :name, :full_name

  def initialize(name)
    self.human = Human.new(name)
  end
end

p = Person.new('alex')
puts p.age
puts p.full_name
