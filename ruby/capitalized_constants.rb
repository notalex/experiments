class Person
  attr_reader :name
  Instances = {}

  def initialize(name)
    @name = name
  end

  def self.load_inst
    [:alex, :ale, :ann].each do |name|
      Instances[name] = new(name)
    end
  end

  def self.find(name)
    Instances[name]
  end

  load_inst
end

p Person.find(:ale)
