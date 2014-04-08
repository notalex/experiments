class Array
  def sap(&block)
    arr = []
    self.each do |i|
      arr.push block.call(i)
    end
    arr
  end
end

p [1,2,3,4].sap {|i| i * 3}
