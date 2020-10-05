# frozen_string_literal: true

class VolitaleMonitor < Monitor
  def update(stock)
    limit = 25
    return unless stock.price - stock.price_history[-2] > limit

    puts "\e[91m  Volitale increase over $#{limit}!\e[0m"
  end
end
