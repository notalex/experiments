module DefEach
  def def_each(*method_names, &block)
    method_names.each do |method_name|
      define_method method_name do
        instance_exec method_name, &block
      end
    end
  end
end

class Person
  extend DefEach

  def_each :one, :two do |method|
    "#{ method }: 42"
  end
end

p Person.new.two
