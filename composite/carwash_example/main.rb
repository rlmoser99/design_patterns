# frozen_string_literal: true

# (Leaf) Service: Basic Wash, Underbody Wash, Clean Windows, Towel Dry, and Vacuum Carpet.
require_relative 'service'

# (Composite) Combos: Express and Deluxe
require_relative 'combo_service'

# The leaf & composite components can be used universally by the clients:
require_relative 'cash_register'
require_relative 'employee'

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
