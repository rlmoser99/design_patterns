# frozen_string_literal: true

# The Composite Classes are containers made up of other leaf or composite classes.
class ComboService < Service
  def initialize(name, coupon = nil)
    super(name, coupon)
    @sub_services = []
  end

  def add_sub_service(service)
    @sub_services << service
    service.parent = self
  end

  def remove_sub_service(service)
    @sub_services.delete(service)
    service.parent = nil
  end

  def total_time
    @sub_services.inject(0.0) { |min, service| min + service.total_time }
  end

  def total_cost
    sum = @sub_services.inject(0.0) { |price, service| price + service.total_cost }
    if @coupon
      sum - (@coupon.value * sum)
    else
      sum
    end
  end
end

# Composite Class using base as abstract
class ExpressCombo < ComboService
  def initialize(coupon = nil)
    super('Express Combo')
    add_sub_service(BasicWash.new)
    add_sub_service(UnderbodyWash.new)
    add_sub_service(CleanWindows.new)
    @coupon = coupon
  end
end

# Composite Class using base as abstract
class DeluxeCombo < ComboService
  def initialize(coupon = nil)
    super('Deluxe Combo')
    add_sub_service(ExpressCombo.new)
    add_sub_service(VacuumCarpets.new)
    add_sub_service(TowelDry.new)
    @coupon = coupon
  end
end
