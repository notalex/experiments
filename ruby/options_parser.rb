require 'optparse'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Valid options are:'

  opts.on('-f:', 'Option for foo') do |value|
    options[:f] = value
  end

  opts.on('-s:', 'string option') do |value|
    options[:s] = value
  end

  opts.on('-d:', OptionParser::DecimalInteger, 'decimal option') do |value|
    options[:d] = value
  end

  # Instead of a trailing :, a trailing text will also indicate required argument.
  opts.on('-c some_arg') do |value|
    options[:c] = value
  end

  # Using a trailing [] indicates the argument is optional.
  opts.on('-o', '--optional []') do |value|
    options[:o] = value
  end

  opts.on('-l x', '--list x', Array) do |list|
    options[:list] = list
  end
end.parse!

p options
p ARGV

=begin
parser = OptionParser.new

parser.banner = 'Valid options are:'

parser.on('-f:', 'Option for foo') do |value|
  options[:f] = value
end

parser.on('-s:', 'string option') do |value|
  options[:s] = value
end

parser.on('-d:', OptionParser::DecimalInteger, 'decimal option') do |value|
  options[:d] = value
end

parser.parse!

p options
p ARGV
=end
