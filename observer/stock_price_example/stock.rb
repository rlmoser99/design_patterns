# frozen_string_literal: true

require 'observer'

class Stock
  include Observable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def update
    market_change = daily_fluctuation
    @price += market_change
    return unless market_change.abs.positive?

    changed
    notify_observers(@price)
  end

  private

  def daily_fluctuation
    [0, 1, -1, 2, -2, 3, -3, 6, -6, 9, -9, 27, -27].sample
  end
end
