class LessThanFiveException < RuntimeError

end

def raiser(n)
  raise LessThanFiveException if n < 5
end

raiser(4)
