# frozen_string_literal: true

# The Component is the common base class & provides the interface.
class Service
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
  end

  def total_time
    0
  end

  def total_cost
    0
  end
end

# The Leaf Classes are the most basic building blocks.
class BasicWash < Service
  def initialize
    super('Basic Wash')
  end

  def total_time
    15.0
  end

  def total_cost
    5.0
  end
end

# The Leaf Classes are the most basic building blocks.
class CleanWindows < Service
  def initialize
    super('Clean Windows and Mirrors')
  end

  def total_time
    12.0
  end

  def total_cost
    3.0
  end
end

# The Leaf Classes are the most basic building blocks.
class TowelDry < Service
  def initialize
    super('Hand Towel Dry')
  end

  def total_time
    10.0
  end

  def total_cost
    2.5
  end
end

# The Leaf Classes are the most basic building blocks.
class UnderbodyWash < Service
  def initialize
    super('Underbody Wash')
  end

  def total_time
    8.0
  end

  def total_cost
    1.0
  end
end

# The Leaf Classes are the most basic building blocks.
class VacuumCarpets < Service
  def initialize
    super('Vacuum Carpets and Mats')
  end

  def total_time
    15.0
  end

  def total_cost
    3.5
  end
end
