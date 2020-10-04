# frozen_string_literal: true

require 'observer'

### Periodically fetch a stock price.
class Ticker
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    last_price = nil
    loop do
      price = Price.fetch(@symbol)
      print "Current price: #{price}\n"
      if price != last_price
        # notify observers
        changed
        last_price = price
        notify_observers(Time.now, price)
      end
      sleep 1
    end
  end
end

### A mock class to fetch a stock price (60 - 140).
class Price
  def self.fetch(_symbol)
    rand(60..139)
  end
end

### An abstract observer of Ticker objects.
class Warner
  def initialize(ticker, limit)
    @limit = limit
    ticker.add_observer(self)
  end
end

# callback for observer
class WarnLow < Warner
  def update(time, price)
    print "--- #{time}: Price below #{@limit}: #{price}\n" if price < @limit
  end
end

# callback for observer
class WarnHigh < Warner
  def update(time, price)
    print "+++ #{time}: Price above #{@limit}: #{price}\n" if price > @limit
  end
end

ticker = Ticker.new('MSFT')
WarnLow.new(ticker, 80)
WarnHigh.new(ticker, 120)
ticker.run
