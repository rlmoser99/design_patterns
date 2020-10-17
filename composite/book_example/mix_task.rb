# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class MixTask < Task
  def initialize
    super('Mix ingredients')
  end

  def get_time_required
    5.0
  end
end
