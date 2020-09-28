# frozen_string_literal: true

require_relative 'number_game'
require_relative 'basic_feedback'
require_relative 'color_feedback'

# basic = BasicFeedback.new
color = ColorFeedback.new

game = NumberGame.new(color)
game.play

# report.formatter = PlainTextFormatter.new
# report.output_report

# Create a game guessing a number.
# Have different kinds of feedback to player.
