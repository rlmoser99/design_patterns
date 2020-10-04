# frozen_string_literal: true

class Challenge
  attr_reader :title, :instructions, :time_limit, :supplies
  attr_accessor :level

  def initialize(&level)
    @level = level
    @title = 'Build the Tallest Tower!'
    @instructions = "Using the following supplies, build a free-standing tower that is as tall as possible.\n\n"
    @time_limit = 6
    @supplies = {
      notecards: 8,
      pipe_cleaners: 6,
      straws: 4,
      sticky_labels: 4,
      sheet_of_newspaper: 1
    }
  end

  def output_challenge
    puts "\n\nDESTINATION IMAGINATION INSTANT CHALLENGE"
    puts "\nTitle: #{title}"
    puts "Instructions: #{instructions}"
    output_supplies
  end

  def output_supplies
    @level.call(self)
  end
end
