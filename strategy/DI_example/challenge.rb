# frozen_string_literal: true

class Challenge
  attr_reader :title, :instructions, :supplies
  attr_accessor :age

  def initialize(age)
    @age = age
    @title = 'Build the Tallest Tower!'
    @instructions = "Using the following supplies, build a free-standing tower that is as tall as possible.\n\n"
    @supplies = {
      notecards: 8,
      pipe_cleaners: 6,
      straws: 4,
      sticky_labels: 4,
      sheet_of_newspaper: 1
    }
  end

  def output_challenge
    puts "\nDESTINATION IMAGINATION INSTANT CHALLENGE"
    puts "\nTitle: #{title}"
    puts "Instructions: #{instructions}"
    output_supplies
  end

  def output_supplies
    @age.output_supplies(self)
  end
end
