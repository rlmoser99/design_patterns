# frozen_string_literal: true

class VolatilityMonitor < Monitor
  def initialize(stock, limit)
    super
    @price_comparison = []
  end

  def update(price)
    @price_comparison << price
    return if @price_comparison.size == 1
    return unless price - @price_comparison[-2] > @limit

    puts "\e[91mVolitale Increase (over $#{@limit})\e[0m"
  end
end
