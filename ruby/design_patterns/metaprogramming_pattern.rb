module Carnivore
  def diet
    'meat'
  end

  def teeth
    'sharp'
  end
end

module Herbivore
  def diet
    'plant'
  end

  def teeth
    'flat'
  end
end

module Nocturnal
  def sleep_time
    'day'
  end

  def awake_time
    'night'
  end
end

module Diurnal
  def sleep_time
    'night'
  end
  
  def awake_time
    'day'
  end
end

def new_animal(diet, awake)
  animal = Object.new

  if diet == :meat
    animal.extend(Carnivore)
  else
    animal.extend(Herbivore)
  end

  if awake == :day
    animal.extend(Diurnal)
  else
    animal.extend(Nocturnal)
  end

  animal
end

class Tiger < CompositeBase
  member_of :population
  member_of :classification
end

class Tree < CompositeBase
  member_of :population
  member_of :classification
end

class Jungle < CompositeBase
  composite_of :population
end

class Species < CompositeBase
  composite_of :classification
end
