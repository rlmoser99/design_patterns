# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class VacuumCarpets < Service
  attr_accessor :name, :parent

  def initialize
    super('Vacuum Carpets and Mats')
  end

  def minutes
    15
  end

  def cost
    3.5
  end
end
