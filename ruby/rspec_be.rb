require 'rspec'

class Array
  def within_five?
    self.size < 5
  end
end

describe "Test" do
  example "should pass" do
    arr = [1,2,3,4]
    arr.should be_within_five
  end
end
