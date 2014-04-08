class Course
  def initialize(name, advanced)
    @name = name
    @advanced = advanced
  end
end

class Person
  attr_accessor :courses

  kent = Person.new
  courses = []
  courses << Course.new('Something', true)
  courses << Course.new('Refactoring', true)
  kent.courses = courses
  psy = Course.new('psy', false)
  kent.courses << psy
end
