# frozen_string_literal: true

require_relative 'task'
require_relative 'add_dry_ingredients_task'
require_relative 'add_liquids_task'
require_relative 'mix_task'
require_relative 'composite_task'
require_relative 'make_batter_task'
require_relative 'fill_pan_task'
require_relative 'make_cake_task'
require_relative 'bake_task'
require_relative 'frost_task'
require_relative 'lick_spoon_task'

prep = MakeBatterTask.new
puts 'Prep time:'
puts prep.get_time_required

cake = MakeCakeTask.new
puts 'Full cake time:'
puts cake.get_time_required
