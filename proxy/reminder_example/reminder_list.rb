class ReminderList
  def initialize
    @reminders = []
  end

  def add_reminder(task)
    @reminders << task
  end

  def current_task
    @reminders.each { |reminder| reminder.current_task }
  end

  def future_task
    @reminders.each { |reminder| reminder.future_task }
  end
end