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

module NumberingWriter
  def write_line(line)
    @line_number ||= 1
    super("#@line_number: #{ line }")
    @line_number += 1
  end
end

module TimeStampingWriter
  def write_line(line)
    super("#{ Time.new }: #{ line }")
  end
end

writer = SimpleWriter.new('out.txt')
writer.extend(NumberingWriter)
writer.extend(TimeStampingWriter)
writer.write_line('Hello out there')
writer.close
