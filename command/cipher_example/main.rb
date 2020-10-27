# frozen_string_literal: true

require_relative 'cipher'

puts 'CAESAR:'
caesar = CaesarCipher.new('Abcd ef Ghijk!')
puts caesar.create_code
puts caesar.undo

puts 'REVERSE:'
reverse = ReverseCipher.new('Abcd ef Ghijk!')
puts reverse.create_code
puts reverse.undo

puts 'ROTATE:'
rotate = RotateCipher.new('Abcd ef Ghijk!')
puts rotate.create_code
puts rotate.undo
