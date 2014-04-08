class CustomIterator
   def iterator
    return enum_for(:iterator) unless block_given?
    3.times { |i| yield i }
    p 'hell'
  end
end

CustomIterator.new.iterator { |el| p el  }
i = CustomIterator.new.iterator
i.each { |el| p el  }
