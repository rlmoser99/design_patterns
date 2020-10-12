# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class AddLiquidsTask < Task
  def initialize
    super('Add liquid ingredients')
  end

  def get_time_required
    3.0
  end
end
