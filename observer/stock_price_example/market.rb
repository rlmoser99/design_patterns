# frozen_string_literal: true

class Market
  def initialize(stock = Stock.new(75))
    @stock = stock
  end

  def monthly_fluctuation
    puts "Today's Stock Price: $#{@stock.price}"
    30.times do
      sleep 2
      @stock.price += daily_fluctuation
    end
  end

  private

  def daily_fluctuation
    [0, 1, -1, 2, -2, 3, -3, 6, -6, 9, -12, 15, -18, 27].sample
  end
end
