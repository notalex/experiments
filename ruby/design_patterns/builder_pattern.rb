class Computer
  attr_accessor :motherboard, :drives, :display
  def initialize(diplay = :crt, motherboard = Motherboard.new, drives = [])
    motherboard, drives, display = motherboard, drives, display
  end
end

class CPU
end

class BasicCPU < CPU
end

class TurboCPU < CPU
end

class Motherboard
  attr_accessor :cpu, :memory_size
  def initialize(cpu = BasicCPU.new, memory_size = 1000)
    cpu, memory_size = cpu, memory_size
  end
end

class Drive
  def initialize(type, size, writable)
    @type, @size, @writable = type, size, writable
  end
end

class ComputerBuilder
 def initialize
   @computer = Computer.new
 end

 def display= (display)
   @computer.display = display
 end

 def memory_size= (size)
   @computer.motherboard.memory_size = size
 end

 def add_cd(writer = false)
   @computer.drives << Drive.new(:cd, 760, writer)
 end

 def add_dvd(writer = false)
  @computer.drives << Drive.new(:dvd, 4700, writer)
 end

 def add_harddisk(size = 10000)
  @computer.drives << Drive.new(:hard_drive, size, true)
 end

 def method_missing(name, *args)
   if name.slice(/^add_/)
     elements = name.scan(/_(\w+?)(?:_|$)/).flatten
     elements.each { |element| send("add_#{ element }") }
   else
     super(name, *args)
   end
 end
end

builder = ComputerBuilder.new
builder.display = :lcd

builder.add_cd(true)
builder.add_dvd_and_harddisk
