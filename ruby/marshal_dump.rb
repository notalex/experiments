class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def marshal_dump
    @name
  end

  def marshal_load(name)
    @name = name
  end
end

person = Person.new(:dummy, 16)
p person.object_id
dumped_person = Marshal.dump(person)
new_person = Marshal.load(dumped_person)
p new_person.object_id
