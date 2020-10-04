# frozen_string_literal: true

class Introduction
  attr_reader :name, :profession
  attr_accessor :mood

  def initialize(name, mood = Mood.new)
    @name = name
    @mood = mood
    @profession = 'programmer'
  end

  def generate_introduction
    @mood.generate_introduction(self)
  end
end
