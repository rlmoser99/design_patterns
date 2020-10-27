# frozen_string_literal: true

# Client Class using Components - Leaf or Composite classes interchangibly
class Employee
  def initialize(name)
    @name = name
  end

  def time_estimate(service)
    service.time_summary.create_list
  end
end
