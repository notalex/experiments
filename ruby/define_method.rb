class Person
  define_method(:meth) do |val|
    puts val
  end
end

Person.new.meth('alcohol')
