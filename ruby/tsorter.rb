require 'tsort'

class Project
  include TSort

  def initialize
    @requirements = Hash.new
  end

  def add_requirement(name, *requirement_dependencies)
    @requirements[name] = requirement_dependencies
  end

  def tsort_each_node(&block)
    @requirements.each_key(&block)
  end

  def tsort_each_child(name, &block)
    @requirements[name].each(&block) if @requirements.has_key?(name)
  end
end

p = Project.new
p.add_requirement(:r11, :r5, :r2)
p.add_requirement(:r10, :r11, :r3)
p.add_requirement(:r9, :r8, :r11)
p.add_requirement(:r8, :r3, :r7)

puts p.tsort
