# frozen_string_literal: true

# (Leaf) Services: Basic Wash, Underbody Wash, Clean Windows, Towel Dry, and Vacuum Carpet
require_relative 'service'

# (Composite) Combos: Express and Deluxe
require_relative 'combo_service'

# (Iterator) Summary: Base and Time Summary (used by all components)
require_relative 'summary'

# (Clients) Uses leaf & composite components universally
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

puts 'CASH REGISTER (client using leaf and composite components):'
cash_register = CashRegister.new
cash_register.charge_customer(wash)
cash_register.charge_customer(discount_wash)
cash_register.charge_customer(express)
cash_register.charge_customer(discount_deluxe)

puts "\nSUMMARY OF SERVICES (using base iterator):"
# leaf with iterator
puts 'Wash Includes:'
puts wash.service_summary.create_list

# composite with iterator
puts 'Express Combo Includes:'
puts express.service_summary.create_list

# composite (containing above composite) with iterator
puts 'Deluxe Combo Includes:'
puts discount_deluxe.service_summary.create_list

puts "\nEMPLOYEE TIME ESTIMATE SUMMARY (client using TimeSummary iterator):"
riley = Employee.new('Riley')
puts 'Wash Time Estimate:'
puts riley.time_estimate(wash)
puts 'Express Combo Time Estimate:'
puts riley.time_estimate(express)
puts 'Deluxe Combo Time Estimate:'
puts riley.time_estimate(discount_deluxe)
