# frozen_string_literal: true

class SellMonitor < Monitor
  def update(price)
    return unless price > @limit

    puts "\e[34mTime to Sell Stock (above $#{@limit})\e[0m"
  end
end
