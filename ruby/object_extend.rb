class Person
  def speak(text)
    "Person: #{ text }"
  end
end

module Module1
  def speak(text)
    super("Module1: #{ text }")
  end
end

module Module2
  def speak(text)
    super("Module2: #{ text }")
  end
end

p = Person.new
p.extend(Module1)
puts p.class
p.extend(Module2)
puts p.speak("Hello")
