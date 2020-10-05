# frozen_string_literal: true

class DailyMarket
  def initialize(stock = Stock.new(75))
    @stock = stock
  end

  def run
    loop do
      @stock.update
      print "Current stock price: $#{@stock.price}\n"
      sleep 2
    end
  end
end
