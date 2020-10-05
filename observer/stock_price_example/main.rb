# frozen_string_literal: true

require_relative 'stock'
require_relative 'market'
require_relative 'monitor'
require_relative 'average_monitor'
require_relative 'volitale_monitor'
require_relative 'change_monitor'

TOP_stock = Stock.new(150)
market = Market.new(TOP_stock)
ChangeMonitor.new(TOP_stock)
AverageMonitor.new(TOP_stock)
VolitaleMonitor.new(TOP_stock)
market.monthly_fluctuation
