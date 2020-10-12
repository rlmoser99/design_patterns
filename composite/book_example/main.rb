# frozen_string_literal: true

require_relative 'task'
require_relative 'add_dry_ingredients_task'
require_relative 'add_liquids_task'
require_relative 'mix_task'
require_relative 'composite_task'
require_relative 'make_batter_task'

bake = MakeBatterTask.new
puts bake.get_time_required
