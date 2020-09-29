# frozen_string_literal: true

require_relative 'challenge'

ELEMENTARY = lambda do |context|
  puts "\e[36mElementary Level:\e[0m"
  context.supplies.each do |key, value|
    puts "  \e[36m#{value} #{key}\e[0m"
  end
  puts "\e[91m\nTime Limit: #{context.time_limit} minutes\e[0m"
end

HIGH_SCHOOL = lambda do |context|
  puts "\e[36mHigh School Level:\e[0m"
  context.supplies.each do |key, value|
    value /= 2
    puts "  \e[36m#{value} #{key}\e[0m" if value.positive?
  end
  puts "\e[91m\nTime Limit: #{context.time_limit - 1} minutes\e[0m"
end

challenge = Challenge.new(&ELEMENTARY)
challenge.output_challenge

challenge.level = HIGH_SCHOOL
challenge.output_challenge
