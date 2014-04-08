class Man
  def meth
    puts yield 
  end
end

Man.new.meth do
  self.class
end
