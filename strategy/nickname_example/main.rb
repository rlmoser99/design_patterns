# frozen_string_literal: true

require_relative 'nickname_generator'
require_relative 'encouraging_name'
require_relative 'mean_name'

encouraging = EncouragingName.new
mean = MeanName.new

nickname = NicknameGenerator.new('Rachel', encouraging)
nickname.generate_nickname

nickname.mood = mean
nickname.generate_nickname
