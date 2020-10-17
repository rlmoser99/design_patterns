# frozen_string_literal: true

#  'Container' made up of any number of subtasks - known as Composite class
class CompositeTask < Task
  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def get_time_required
    @sub_tasks.inject(0.0) { |time, task| time + task.get_time_required }
  end
end
