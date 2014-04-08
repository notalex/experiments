class Encrypter
  def initialize(key)
    @key = key
  end

  def to_binary(str)
    str.unpack("B*").first.to_i
  end

  def to_char(binary)
    [binary.to_s].pack("B*")
  end

  def encrypt(reader, writer)
    key_index = 0
    while not reader.eof?
      clear_char = to_binary(reader.getc)
      index_value = to_binary(@key[key_index])
      encrypted_char = clear_char ^ index_value
      writer.putc(to_char(encrypted_char))
      key_index = (key_index + 1) % @key.size
    end
  end
end

e = Encrypter.new("alex")
e.encrypt(File.open('reader.txt'), File.open('writer.txt', 'w'))

class StringIOAdapter
  def initialize(string)
    @string = string
    @position = -1
  end

  def getc
    @position += 1
    @string[@position]
  end

  def eof?
    @position >= @string.length
  end
end

e = Encrypter.new("alex")
io_string = StringIOAdapter.new("some content to be encrypted")
e.encrypt(io_string, File.open('writer.txt', 'w'))
