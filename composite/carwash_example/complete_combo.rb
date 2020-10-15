# frozen_string_literal: true

# Composite Class using base as abstract
class CompleteCombo < ComboService
  def initialize
    super('Express Combo')
    add_sub_service(SoftClothWash.new)
    add_sub_service(UnderbodyWash.new)
    add_sub_service(ExteriorWindows.new)
    add_sub_service(VacuumCarpets.new)
    add_sub_service(TowelDry.new)
  end
end
