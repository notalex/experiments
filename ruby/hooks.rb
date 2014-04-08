class Animal
  def self.before_litter(method_name)
    @before_litter = method_name
  end

  def self.method_added(litter)
    self.new.send @before_litter
  end
end


class Human < Animal
  before_litter :seek_privacy

  def seek_privacy
    puts "No one is around: Confirmed"
  end

  def litter
    puts 'phad phad phad... Shit!!' 
  end

end

puts Human.new.litter
