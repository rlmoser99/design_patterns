# frozen_string_literal: true

# receiver class
class Message
  attr_accessor :data

  def initialize(string)
    @data = string
  end

  def to_s
    @data.to_s
  end
end
