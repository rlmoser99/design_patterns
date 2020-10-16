# frozen_string_literal: true

# (Leaf) Service: Basic Wash, Underbody Wash, Clean Windows, Towel Dry, and Vacuum Carpet.
require_relative 'service'

# (Composite) Combos: Express and Complete
require_relative 'combo_service'

# The leaf & composite components can be used universally by the clients:
require_relative 'cash_register'
require_relative 'employee'

puts 'Cash Register:'
cash_register = CashRegister.new
cash_register.charge_customer(BasicWash.new)
cash_register.charge_customer(ExpressCombo.new)
cash_register.charge_customer(CompleteCombo.new)

puts 'Employee:'
riley = Employee.new('Riley')
riley.time_estimate(BasicWash.new)
riley.time_estimate(ExpressCombo.new)
riley.time_estimate(CompleteCombo.new)
