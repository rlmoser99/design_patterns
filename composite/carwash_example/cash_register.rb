# frozen_string_literal: true

# Client Class using Components - Leaf or Composite classes interchangibly
class CashRegister
  def charge_customer(service)
    price = convert_price(service.total_cost)
    if service.coupon
      title = service.coupon.name.downcase
      puts "\e[32mThe #{service.name}, with the #{title} coupon, costs $#{price}.\e[0m"
    else
      puts "\e[32mThe #{service.name} costs $#{price}.\e[0m"
    end
  end

  private

  def convert_price(number)
    format '%.2f', number
  end
end
