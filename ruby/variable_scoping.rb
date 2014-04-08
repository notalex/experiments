 x = "original"
 def meth(x)
   x = "replaced"
   puts x
 end
 meth(x)
 puts x

 def meth(x)
   x.gsub!(/original/, 'replaced')
   puts x
 end
 meth(x)
 puts x
