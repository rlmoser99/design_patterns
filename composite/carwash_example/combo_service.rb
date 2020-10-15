# frozen_string_literal: true

#  'Container' made up of any number of subservices - known as Composite class
class ComboService < Service
  def initialize(name)
    super(name)
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

  def minutes
    @sub_services.inject(0.0) { |min, service| min + service.minutes }
  end

  def cost
    @sub_services.inject(0.0) { |price, service| price + service.cost }
  end

  def summary
    puts "#{name} costs $#{cost}0 and takes about #{minutes} minutes."
    puts '  Includes:'
    @sub_services.each { |service| puts "   - #{service.name}" }
  end
end
