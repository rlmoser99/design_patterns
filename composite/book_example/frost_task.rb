# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class FrostTask < Task
  def initialize
    super('Frost Cake')
  end

  def get_time_required
    8.0
  end
end
