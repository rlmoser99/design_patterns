# frozen_string_literal: true

require_relative 'stock'
require_relative 'market'
require_relative 'monitor'
require_relative 'average_monitor'
require_relative 'volatile_monitor'
require_relative 'change_monitor'

TOP_stock = Stock.new(150)
ChangeMonitor.new(TOP_stock)
VolatileMonitor.new(TOP_stock)
AverageMonitor.new(TOP_stock)

# The market randomly changes the stock price for 30 days (in 30 seconds).
market = Market.new(TOP_stock)
market.monthly_fluctuation
