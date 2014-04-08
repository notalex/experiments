class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts("Duck #{@name} is eating.")
  end

  def speak
    puts("Duck #{@name} says Quack!")
  end

  def sleep
    puts("Duck #{@name} sleeps quietly.")
  end
end

class Frog
  def initialize(name)
    @name = name
  end

  def eat
    puts("Frog #{@name} is eating.")
  end

  def speak
    puts("Frog #{@name} says Croooakk!")
  end

  def sleep
    puts("Frog #{@name} doesn't sleep.")
  end
end

class Pond
  def initialize(number_ducks)
    @ducks = []
    number_ducks.times do |i|
      @ducks << Duck.new("Duck#{ i }")
    end
  end

  def simulate_one_day
    @ducks.each { |duck| duck.speak }
    @ducks.each { |duck| duck.eat }
    @ducks.each { |duck| duck.sleep }
  end
end

pond = Pond.new(3)
pond.simulate_one_day

# problem with accomodating frogs in the same pond
