# frozen_string_literal: true

require 'observer'

class Stock
  include Observable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def price=(new_price)
    old_price = @price
    @price = new_price
    puts "Current Stock Price: $#{@price}"
    return unless old_price != new_price

    changed
    notify_observers(@price)
  end
end
