# frozen_string_literal: true

require_relative 'introduction'
require_relative 'encouraging_name'
require_relative 'mean_name'

encouraging = EncouragingName.new
mean = MeanName.new

intro = Introduction.new('Rachel', encouraging)
intro.generate_introduction

intro.mood = mean
intro.generate_introduction
