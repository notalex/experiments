class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

string = File.read(ARGV[0])
users = Marshal.load(string)
puts users.inspect
