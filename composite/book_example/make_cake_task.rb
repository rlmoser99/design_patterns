# frozen_string_literal: true

# We must keep in mind that the objects tree may go as deep as we want.
# MakeBatterTask contains only leaf objects, but we could create a class that contains composite objects and it would behave exactly the same:
class MakeCakeTask < CompositeTask
  def initialize
    super('Make cake')
    add_sub_task(MakeBatterTask.new)
    add_sub_task(FillPanTask.new)
    add_sub_task(BakeTask.new)
    add_sub_task(FrostTask.new)
    add_sub_task(LickSpoonTask.new)
  end
end
