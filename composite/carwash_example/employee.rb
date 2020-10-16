# frozen_string_literal: true

# Client Class using Components - Leaf or Composite classes interchangibly
class Employee
  def initialize(name)
    @name = name
  end

  def time_estimate(service)
    number = service.total_time.to_i
    puts "\e[94m#{@name} needs #{number} minutes to do the #{service.name}.\e[0m"
  end
end
