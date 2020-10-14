# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class SoftClothWash < Service
  attr_accessor :name, :parent

  def initialize
    super('Soft Cloth Wash')
  end

  def minutes
    12
  end

  def cost
    3.00
  end
end
