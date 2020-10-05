# frozen_string_literal: true

class BuyMonitor < Monitor
  def update(price)
    puts "Time to buy stock, below $#{@limit}: $#{price}" if price < @limit
  end
end
