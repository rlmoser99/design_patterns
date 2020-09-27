# frozen_string_literal: true

class NicknameGenerator
  attr_reader :name
  attr_accessor :generator

  def initialize(name, generator)
    @name = name
    @generator = generator
  end

  def generate_nickname
    @generator.generate_nickname(self)
  end
end
