# frozen_string_literal: true

class AverageMonitor < Monitor
  def update(stock)
    limit = 20
    average = stock.price_history.sum / stock.price_history.size
    difference = stock.price - average
    return unless difference.abs > limit

    if difference.positive?
      puts "\e[32m  Time to sell, average is $#{average}.\e[0m"
    else
      puts "\e[32m  Time to buy, average is $#{average}.\e[0m"
    end
  end
end
