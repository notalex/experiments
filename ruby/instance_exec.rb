class Person
  STRANGE = 'constants being accessed using instance object'

  def initialize(n = nil)
    @number = n
  end

  def self.classy
    'class method'
  end

  private
  def secret_code(n)
    n * 42
  end
end

p = Person.new
p p.instance_exec { secret_code(1) }
p p.send(:secret_code, 1)

q = Person.new(10)
p q.instance_exec(10) { |x| x * @number }
p q.send("@number")

puts Person.instance_exec { classy }
puts Person.send(:classy)

puts p.instance_exec { STRANGE }
puts p.send(:STRANGE)
