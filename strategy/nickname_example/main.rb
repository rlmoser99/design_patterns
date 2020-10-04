# frozen_string_literal: true

require_relative 'introduction'
require_relative 'mood'
require_relative 'encouraging_mood'
require_relative 'mean_mood'

intro = Introduction.new('Rachel')
intro.generate_introduction

intro.mood = EncouragingMood.new
intro.generate_introduction

intro.mood = MeanMood.new
intro.generate_introduction
