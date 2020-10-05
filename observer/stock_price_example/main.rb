# frozen_string_literal: true

require_relative 'stock'
require_relative 'daily_market'
require_relative 'monitor'
require_relative 'buy_monitor'
require_relative 'sell_monitor'
require_relative 'volatility_monitor'

TOP_stock = Stock.new(150)
daily_market = DailyMarket.new(TOP_stock)
BuyMonitor.new(TOP_stock, 100)
SellMonitor.new(TOP_stock, 200)
VolatilityMonitor.new(TOP_stock, 25)
daily_market.run

# moving average
