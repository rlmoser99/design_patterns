# frozen_string_literal: true

class ChangeMonitor < Monitor
  def update(stock)
    daily_change = stock.price - stock.price_history[-2]
    sign = daily_change.positive? ? '+' : '-'
    puts "\e[36m  Daily Change: #{sign}$#{daily_change.abs}\e[0m"
  end
end
