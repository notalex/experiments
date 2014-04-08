class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Dumper
  def initialize
    @users = []
  end

  def add_user(user)
    @users << user
  end

  def dump_it
    Marshal.dump @users
  end
end

dumper = Dumper.new
dumper.add_user(User.new('alex'))
dumper.add_user(User.new('anita'))
string = dumper.dump_it
File.open('dumped', 'w') { |f| f.write string }
