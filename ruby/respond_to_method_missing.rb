class Person
  def method_missing(method_name, *args)
    if method_name == :hell
      'good'
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    if method_name == :hell
      true
    else
      super
    end
  end
end

person = Person.new
p person.respond_to?(:hell)
