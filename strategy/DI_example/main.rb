# frozen_string_literal: true

require_relative 'challenge'
require_relative 'elementary'
require_relative 'high_school'

challenge = Challenge.new(Elementary.new)
challenge.output_challenge

challenge.age = HighSchool.new
challenge.output_challenge
