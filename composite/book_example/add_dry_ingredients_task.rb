# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class AddDryIngredientsTask < Task
  def initialize
    super('Add dry ingredients')
  end

  def get_time_required
    1.0
  end
end
