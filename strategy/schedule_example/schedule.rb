# frozen_string_literal: true

class Schedule
  attr_reader :title, :text
  attr_accessor :audience

  def initialize(audience)
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
    @audience = audience
  end

  def to_s
    @audience.to_s(self)
  end
end
