# frozen_string_literal: true

# Composite Class using base as abstract
class ExpressCombo < ComboService
  def initialize
    super('Express Combo')
    add_sub_service(SoftClothWash.new)
    add_sub_service(UnderbodyWash.new)
    add_sub_service(ExteriorWindows.new)
  end
end
