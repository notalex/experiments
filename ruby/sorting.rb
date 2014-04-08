a = ['mt3', 1, 'nil', 'mt1', 3,  5, 4, 'nil', 'mt2']
a.sort! do |a1, a2|
  if a1 == 'nil' and a2 != 'nil'
    -1
  elsif a1 != 'nil' and a2 == 'nil'
    1
  elsif a1.is_a?(Fixnum) and !a2.is_a?(Fixnum)
    -1
  elsif !a1.is_a?(Fixnum) and a2.is_a?(Fixnum)
    1
  elsif a1.is_a?(Fixnum) and a2.is_a?(Fixnum)
    a2 <=> a1
  elsif a1.match(/mt\d/) and a2.match(/mt\d/)
    a1 <=> a2
  else
    0
  end
end
p a

# ['nil', 'nil', 5, 4, 3, 1, 'mt1', 'mt2', 'mt3']
