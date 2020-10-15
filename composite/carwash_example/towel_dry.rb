# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class TowelDry < Service
  attr_accessor :name, :parent

  def initialize
    super('Hand Towel Dry')
  end

  def minutes
    10
  end

  def cost
    2.5
  end
end
