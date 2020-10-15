# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class ExteriorWindows < Service
  attr_accessor :name, :parent

  def initialize
    super('Clean Exterior Windows and Mirrors')
  end

  def minutes
    15
  end

  def cost
    4
  end
end
