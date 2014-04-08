module Observable
  def add_observer(observer)
    @observers ||= []
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

class Publisher
  include Observable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def run
    notify_observers
  end
end

class Subscriber
  def initialize(publisher)
    publisher.add_observer(self)
  end

  def update(publisher)
    puts publisher.name
  end
end

p = Publisher.new('alex')
s = Subscriber.new(p)
p.run
