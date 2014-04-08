require 'rspec'

class Hash
  def contained_keys
    self.keys
  end
end

describe "Test" do
  example "should pass" do
    hsh = {key1: :val1, key2: :val2}
    hsh.should have(2).contained_keys
  end
end

