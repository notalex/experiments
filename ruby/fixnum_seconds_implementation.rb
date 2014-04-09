# How do we make 1 equal 1.second?

class ProxyObject < BasicObject
  undef_method :==
  undef_method :equal?
end

class Duration < ProxyObject
  attr_reader :number, :type

  def initialize(number, type)
    @number, @type = number, type
  end

  def to_s
    "#{ number } #{ type }"
  end

  private

    def method_missing(method_name, *args)
      ::Kernel.puts "method: #{ method_name }"
      number.send(method_name, *args)
    end
end

class Fixnum
  def seconds
    Duration.new(self, __method__)
  end
  alias_method :second, :seconds
end

p 1 == 1.second
