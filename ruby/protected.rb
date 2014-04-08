class Person
  attr_reader :name, :age
  private :name
  protected :age

  def initialize(name, age)
    @name, @age = name, age
  end
  
  def is_older_than?(other)
    age > other.age
  end

  def has_longer_name?(other)
    name.size > other.name.size
  end
end

p1 = Person.new('Alex', 27)
p2 = Person.new('Anita', 26)
puts p1.is_older_than?(p2)
puts p1.has_longer_name?(p2)
