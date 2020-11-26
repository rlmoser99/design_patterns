require 'etc'
require 'time'

require_relative 'reminder'
require_relative 'secret_reminder'
require_relative 'reminder_list'

today = Date.today
tomorrow = Date.today + 1
secret_access = Etc.getlogin

ruby = Reminder.new(today, "Read Ruby's proxy chapter")
secret_gof = SecretReminder.new(Reminder.new(today, "Read GoF's proxy chapter (secret)"), secret_access)
project = Reminder.new(tomorrow, 'Start members-only project')
code = Reminder.new(today, 'Make a proxy code example')
secret_tutorial = SecretReminder.new(Reminder.new(tomorrow, "Finish Hartl's tutorial (secret)"), secret_access)
project = Reminder.new(tomorrow, 'Start members-only project')

my_reminders = ReminderList.new
my_reminders.add_reminder(ruby)
my_reminders.add_reminder(secret_gof)
my_reminders.add_reminder(code)
my_reminders.add_reminder(secret_tutorial)
my_reminders.add_reminder(project)

puts "TODAY'S TASKS:"
my_reminders.current_task
puts
puts 'FUTURE TASKS:'
my_reminders.future_task

# puts 'CAN NOT ACCESS YOUR SECRET TASKS:'
# your_secret_task = SecretReminder.new(Reminder.new(today, '???'), 'YOU')
# your_secret_task.current_task