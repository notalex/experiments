require 'observer'

class Ticker
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    changed
    notify_observers(@symbol)
  end
end

class Warner
  def initialize(ticker)
    ticker.add_observer(self)
  end

  def update(symbol)
    puts '##update##'
    puts symbol
  end
end

ticker = Ticker.new('sign')
warner = Warner.new(ticker)
ticker.run
