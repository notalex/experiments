module Cipher
  extend self

  def group_segments(string)
    text = string.gsub(/[^a-zA-z]/, '').upcase
    divisions = (text.length / 5.0).ceil
    subtext = text + ('X' * divisions)
    array = divisions.times.map { |i| subtext[(i * 5)...((i+1) * 5)]}
  end
end
