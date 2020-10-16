# frozen_string_literal: true

# Client Class using Components - Leaf or Composite classes interchangibly
class CashRegister
  def charge_customer(service)
    puts "\e[32mThe #{service.name} costs $#{service.total_cost}0.\e[0m"
  end
end
