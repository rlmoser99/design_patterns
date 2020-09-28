# frozen_string_literal: true

class Introduction
  attr_reader :name, :sentence
  attr_accessor :mood

  def initialize(name, mood)
    @name = name
    @sentence = {
      start: 'is a very',
      final: 'programmer.'
    }
    @mood = mood
  end

  def generate_introduction
    @mood.generate_introduction(self)
  end
end
