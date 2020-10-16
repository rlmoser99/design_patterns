# frozen_string_literal: true

class VolatileMonitor < Monitor
  def update(stock)
    limit = 20
    difference = stock.price - stock.price_history[-2]
    return unless difference.abs > limit

    if difference.positive?
      puts "\e[91m  Warning: Volatile increase over $#{limit}!\e[0m"
    else
      puts "\e[91m  Warning: Volatile decrease over $#{limit}!\e[0m"
    end
  end
end
