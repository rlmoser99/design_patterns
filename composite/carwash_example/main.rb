# frozen_string_literal: true

require_relative 'service'
require_relative 'combo_service'
require_relative 'soft_cloth_wash'
require_relative 'underbody_wash'
require_relative 'exterior_windows'
require_relative 'express_combo'

express = ExpressCombo.new
puts express.minutes
puts express.cost
express.list
express.summary
