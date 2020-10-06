# frozen_string_literal: true

class Market
  def initialize(stock = Stock.new(75))
    @stock = stock
  end

  def monthly_fluctuation
    puts "Current Stock Price: $#{@stock.price}"
    30.times do
      sleep 1
      @stock.price += daily_fluctuation
    end
  end

  private

  def daily_fluctuation
    [0, 1, -1, 2, 3, -5, 8, 13, -21, 34].sample
  end
end
