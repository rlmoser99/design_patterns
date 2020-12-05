require 'etc'
require 'time'

require_relative 'reminder'
require_relative 'secret_reminder'
require_relative 'reminder_list'

require 'etc'
require 'time'

# subject 
require_relative 'reminder'
# protection proxy 
require_relative 'secret_reminder'
# client
require_relative 'reminder_list'

# create two different dates for reminders
today = Date.today
tomorrow = Date.today + 1

# create 3 subjects (reminders) 
ruby = Reminder.new(today, "Read Ruby's proxy chapter")
code = Reminder.new(today, 'Make a proxy code example')
project = Reminder.new(tomorrow, 'Start members-only project')

# create secure access for protection proxy 
secret_access = Etc.getlogin

# create 2 protection proxies (secret reminders)
gof = SecretReminder.new(Reminder.new(today, "Read GoF's proxy chapter (secret)"), secret_access)
tutorial = SecretReminder.new(Reminder.new(tomorrow, "Finish Hartl's tutorial (secret)"), secret_access)

# create client (reminder list) and add 5 reminders
my_reminders = ReminderList.new
my_reminders.add_reminder(ruby)
my_reminders.add_reminder(code)
my_reminders.add_reminder(project)
my_reminders.add_reminder(gof)
my_reminders.add_reminder(tutorial)

# display tasks organized by day
puts "TODAY'S TASKS:"
my_reminders.current_task
puts
puts 'FUTURE TASKS:'
my_reminders.future_task
puts

# create secure access for your protection proxy 
your_access = 'qwerty'

# create 1 protection proxy for you
your_secret_task = SecretReminder.new(Reminder.new(today, 'Buy special gift'), your_access)

puts 'CAN NOT ACCESS YOUR SECRET TASK:'
# your_secret_task.current_task