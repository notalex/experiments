class SimpleWriter
  def initialize(path)
    @file = File.open(path, 'w')
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def close
    @file.close
  end
end

class WriterDecorator
  def initialize(real_writer)
    @real_writer = real_writer
  end

  def write_line(line)
    @real_writer.write_line(line)
  end

  def close
    @real_writer.close
  end
end

class NumberingWriter < WriterDecorator
  def initialize(real_writer)
    super
    @line_number = 1
  end
  
  def write_line(line)
    @real_writer.write_line("#@line_number: #{ line }")
    @line_number += 1
  end
end

class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{ Time.new }: #{ line }")
  end
end

writer = NumberingWriter.new(TimeStampingWriter.new(SimpleWriter.new('out.txt')))
writer.write_line('Hello out there')
writer.close
