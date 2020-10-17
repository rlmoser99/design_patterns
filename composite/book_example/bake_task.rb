# frozen_string_literal: true

# An example of a most basic jobs - known as leaf classes
class BakeTask < Task
  def initialize
    super('Bake Cake')
  end

  def get_time_required
    30.0
  end
end
