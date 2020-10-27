# frozen_string_literal: true

# Coupon provides a discount to the price of all component services.
class Coupon
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end
end
