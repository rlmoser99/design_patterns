# frozen_string_literal: true

require_relative 'employee'
require_relative 'tax_man'
require_relative 'payroll'

rachel = Employee.new('Rachel', 'Developer', 70_000)
tax_man = TaxMan.new
payroll = Payroll.new
rachel.add_observer(tax_man)
rachel.add_observer(payroll)
rachel.salary = 80_000
