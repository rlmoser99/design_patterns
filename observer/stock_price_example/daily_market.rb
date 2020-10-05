# frozen_string_literal: true

class DailyMarket
  def initialize(stock = Stock.new(75))
    @stock = stock
  end

  def run
    loop do
      @stock.price += daily_fluctuation
      sleep 2
    end
  end

  private

  def daily_fluctuation
    [0, 1, -1, 2, -2, 3, -3, 6, -6, 9, -9, 15, 27].sample
  end
end
