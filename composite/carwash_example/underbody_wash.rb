# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class UnderbodyWash < Service
  attr_accessor :name, :parent

  def initialize
    super('Underbody Wash')
  end

  def minutes
    8
  end

  def cost
    2
  end
end
