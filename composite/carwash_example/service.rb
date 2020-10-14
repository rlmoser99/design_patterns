# frozen_string_literal: true

# Common base class - known as the Component
class Service
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
  end

  def minutes
    0
  end

  def cost
    0.0
  end

  def summary
    puts "#{name} costs $#{cost} and takes #{minutes} minutes"
  end
end
