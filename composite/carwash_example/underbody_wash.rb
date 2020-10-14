# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class UnderbodyWash < Service
  attr_accessor :name, :parent

  def initialize
    super('Underbody Wash')
  end

  def minutes
    9
  end

  def cost
    2.50
  end
end
