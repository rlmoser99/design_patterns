# frozen_string_literal: true

class NicknameGenerator
  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood)
    @name = name
    @mood = mood
  end

  def generate_nickname
    @mood.generate_nickname(self)
  end
end
