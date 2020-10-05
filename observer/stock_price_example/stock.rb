# frozen_string_literal: true

require 'observer'

class Stock
  include Observable

  attr_reader :price, :price_history

  def initialize(price)
    @price = price
    @price_history = [price]
  end

  def price=(new_price)
    @price_history << new_price
    @price = new_price
    puts "Today's Stock Price: $#{@price}"
    return unless @price_history[-2] != new_price

    changed
    notify_observers(self)
  end
end
