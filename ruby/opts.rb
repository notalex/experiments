require 'optparse'

p ARGV.getopts('g:', 'foo:', 'd', 'abc')
p ARGV

=begin
-g hell --abc   # {"g"=>"hell", "foo"=>nil, "d"=>false, "abc"=>true} ; []
arg -g hell --abc   # {"g"=>nil, "foo"=>nil, "d"=>false, "abc"=>false}a ; ["arg", "-g", "hell", "--abc"]
=end
