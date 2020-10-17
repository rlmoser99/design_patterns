# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class FillPanTask < Task
  def initialize
    super('Fill Pan')
  end

  def get_time_required
    5.0
  end
end
