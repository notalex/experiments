class Person
  def method_missing(m, *args)
    self.class.new
  end

  def to_s
    nil
  end

  def inspect
    nil
  end
end

person = Person.new
person && puts('hell')
