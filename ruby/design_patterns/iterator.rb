class ExternalIterator
  def initialize(array)
    @array = array.clone
    @index = 0
  end

  def next_item
    item = @array[@index]
    @index += 1
    item
  end

  def has_more_items?
    @index < @array.length
  end
end

iterator = ExternalIterator.new %w(alex john varghese)
while iterator.has_more_items?
  puts iterator.next_item
end
