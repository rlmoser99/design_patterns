# frozen_string_literal: true

class SellMonitor < Monitor
  def update(price)
    puts "Time to sell stock, above $#{@limit}: $#{price}" if price > @limit
  end
end
