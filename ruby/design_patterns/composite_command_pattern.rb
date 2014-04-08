class Command
  attr_reader :description

  def initialize(description)
    @description = description
  end

  def execute
  end
end

class CreateFile < Command
  def initialize(path, contents)
    super("Create file: #{ path }")
    @path = path
    @contents = contents
  end

  def execute
    File.open(@path, 'w') { |f| f.write(@contents) }
  end

  def unexecute
    File.delete(@path)
  end
end

class DeleteFile < Command
  def initialize(path)
    super("Delete file: #{ path }")
    @path = path
  end

  def execute
    @contents = File.read(@path)
    File.delete(@path)
  end

  def unexecute
    File.open(@path, 'w') { |f| f.write(@contents) }
  end
end

class CopyFile < Command
  def initialize(source, target)
    super("Copy file: #{ source } to #{ target }")
    @source = source
    @target = target
  end

  def execute
    FileUtils.copy(@source, @target)
  end

  def unexecute
    File.delete(@target)
  end
end

def CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(cmd)
    @commands << cmd
  end

  def execute
    @commands.each { |cmd| cmd.execute }
  end

  def unexecute
    @commands.reverse.each { |cmd| cmd.unexecute }
  end

  def description
    description = ''
    @commands.each { |cmd| description += "#{ cmd.description }\n"}
    description
  end
end

cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))
cmds.execute
