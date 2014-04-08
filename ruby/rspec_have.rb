require 'rspec'
class Hash
  def has_val?(n)
    has_value?(n)
  end
end

describe "Test" do
  example "should pass" do
    hsh = {key1: :val1, key2: :val2}
    hsh.should have_val(:val2)
  end
end
