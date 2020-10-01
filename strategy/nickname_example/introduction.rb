# frozen_string_literal: true

class Introduction
  attr_reader :name, :profession
  attr_accessor :mood

  def initialize(name, mood)
    @name = name
    @mood = mood
    @profession = 'programmer'
  end

  def generate_introduction
    print "This is #{name}, or as we jokingly say, "
    @mood.generate_introduction(self)
  end
end
