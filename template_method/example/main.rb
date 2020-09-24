# frozen_string_literal: true

require_relative 'coffee_drink'
require_relative 'americano'
require_relative 'latte'
require_relative 'red_eye'

puts 'Template Method Pattern with Coffee Drinks'

americano = Americano.new
americano.to_s

latte = Latte.new
latte.to_s

red_eye = RedEye.new
red_eye.to_s
