# frozen_string_literal: true

require_relative 'nickname_generator'
require_relative 'nice_generator'
require_relative 'mean_generator'

nickname = NicknameGenerator.new('Megan', NiceGenerator.new)
nickname.generate_nickname

# Not sure all should clases should be using the same name
# Add colors to it?

nickname.generator = MeanGenerator.new
nickname.generate_nickname
