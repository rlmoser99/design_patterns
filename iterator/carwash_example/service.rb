# frozen_string_literal: true

# The Component is the common base class & provides the interface.
class Service
  attr_accessor :name, :parent, :coupon, :sub_services

  def initialize(name, coupon = nil)
    @name = name
    @cost = 0
    @coupon = coupon
    @parent = nil
    @sub_services = nil
  end

  def service_summary
    Summary.new(self)
  end

  def time_summary
    TimeSummary.new(self)
  end

  def total_time
    0
  end

  def total_cost
    if @coupon
      @cost - (@coupon.value * @cost)
    else
      @cost
    end
  end
end

# The Leaf Classes are the most basic building blocks.
class BasicWash < Service
  def initialize(coupon = nil)
    super('Basic Wash')
    @cost = 5.0
    @coupon = coupon
  end

  def total_time
    15.0
  end
end

# The Leaf Classes are the most basic building blocks.
class CleanWindows < Service
  def initialize(coupon = nil)
    super('Clean Windows and Mirrors')
    @cost = 3.0
    @coupon = coupon
  end

  def total_time
    12.0
  end
end

# The Leaf Classes are the most basic building blocks.
class TowelDry < Service
  def initialize(coupon = nil)
    super('Hand Towel Dry')
    @cost = 2.5
    @coupon = coupon
  end

  def total_time
    10.0
  end
end

# The Leaf Classes are the most basic building blocks.
class UnderbodyWash < Service
  def initialize(coupon = nil)
    super('Underbody Wash')
    @cost = 1
    @coupon = coupon
  end

  def total_time
    8.0
  end
end

# The Leaf Classes are the most basic building blocks.
class VacuumCarpets < Service
  def initialize(coupon = nil)
    super('Vacuum Carpets and Mats')
    @cost = 3.5
    @coupon = coupon
  end

  def total_time
    15.0
  end
end
