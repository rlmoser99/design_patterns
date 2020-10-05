# frozen_string_literal: true

class BuyMonitor < Monitor
  def update(price)
    return unless price < @limit

    puts "\e[34mTime to Buy Stock (below $#{@limit})\e[0m"
  end
end
