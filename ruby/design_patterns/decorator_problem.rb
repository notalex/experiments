class EnhancedWriter

  def initialize(path)
    @file = File.open(path, 'w')
    @line_number = 1
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def timestamping_write_line(data)
    write_line("#{ Time.new }: #{ data }")
  end

  def numbering_write_line(data)
    write_line("#@line_number: #{ data }")
    @line_number += 1
  end

  def close
    @file.close
  end
end

writer = EnhancedWriter.new('out.txt')
writer.write_line("A plain line")
writer.close

# Cannot write data with both line number and time stamp
