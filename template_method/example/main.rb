# frozen_string_literal: true

require_relative 'coffee'
require_relative 'americano'
require_relative 'latte'
require_relative 'red_eye'

americano = Americano.new
puts americano.to_s

latte = Latte.new
puts latte.to_s

red_eye = RedEye.new
puts red_eye.to_s
