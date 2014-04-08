require 'rspec'
require_relative '../cipher'

describe Cipher do
  it "should work without padding for smaller strings" do
    text = 'Code in Ruby, live longer'
    encoded_text = Cipher.group_segments(text)
    encoded_text.should == 'CODEI NRUBY LIVEL ONGER'
  end

  it "should pad longer strings" do
    text = 'Code in Ruby, live longest'
    encoded_text = Cipher.group_segments(text)
    encoded_text.should == 'CODEI NRUBY LIVEL ONGES TXXXX'
  end
end

