class Tring < String
  def gsub(*args, &block)
    to_s.gsub(*args, &block)
  end
end

string = Tring.new('foo')
p string.gsub(/(foo)/) { "--#{ $1 }--" }
