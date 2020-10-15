# frozen_string_literal: true

require_relative 'service'
require_relative 'combo_service'
require_relative 'soft_cloth_wash'
require_relative 'underbody_wash'
require_relative 'exterior_windows'
require_relative 'express_combo'
require_relative 'complete_combo'
require_relative 'towel_dry'
require_relative 'vacuum_carpets'

express = ExpressCombo.new
# puts express.minutes
# puts express.cost
express.summary

complete = CompleteCombo.new
complete.summary

# https://www.redcarpetpeoria.com/car-wash-services
