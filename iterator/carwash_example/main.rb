# frozen_string_literal: true

# (Leaf) Service: Basic Wash, Underbody Wash, Clean Windows, Towel Dry, and Vacuum Carpet.
require_relative 'service'

# (Composite) Combos: Express and Deluxe
require_relative 'combo_service'

# The leaf & composite components can be used universally by the clients:
require_relative 'cash_register'
require_relative 'employee'

# ITERATOR:
require_relative 'description'

# Optional coupon that can be used with all components.
require_relative 'coupon'
promo30 = Coupon.new('New Customer', 0.3)
promo15 = Coupon.new('Military Discount', 0.15)

# leaf (with & without a coupon)
wash = BasicWash.new
discount_wash = BasicWash.new(promo15)

# composite (with & without a coupon)
express = ExpressCombo.new
discount_deluxe = DeluxeCombo.new(promo30)

puts 'Cash Register:'
cash_register = CashRegister.new
cash_register.charge_customer(wash)
cash_register.charge_customer(discount_wash)
cash_register.charge_customer(express)
cash_register.charge_customer(discount_deluxe)

puts 'Employee:'
riley = Employee.new('Riley')
riley.time_estimate(wash)
riley.time_estimate(discount_wash)
riley.time_estimate(express)
riley.time_estimate(discount_deluxe)

# express.iterator.each { |item| puts item.name }
# discount_deluxe.iterator.each { |item| puts item.name }

puts 'Express Combo Services:'
summary = express.iterator.service_summary
puts summary

puts 'Deluxe Combo Services:'
deluxe_summary = discount_deluxe.iterator.service_summary
puts deluxe_summary

puts 'Wash Services:'
wash_summary = wash.iterator.service_summary
puts wash_summary
