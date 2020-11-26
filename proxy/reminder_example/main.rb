require 'etc'
require 'time'

class Reminder
  attr_reader :task

  def initialize(date, task)
    @date = date
    @task = task
  end

  def current_task
    today = Date.today
    puts today
    if @date == today
      @task
    else
      'no current task'
    end
  end

  def future_task
    today = Date.today
    puts today
    if @date > today
      @task
    else
      'no future task'
    end
  end
end


class ReminderProtectionProxy
  def initialize(actual_reminder, owner)
    @subject = actual_reminder
    @owner = owner
  end

  def current_task
    check_access
    return @subject.current_task
  end

  def future_task
    check_access
    return @subject.future_task
  end

  def check_access
    if Etc.getlogin != @owner
      raise "Invalid access: #{Etc.getlogin} cannot access reminder."
    end
  end
end

date = Date.today
tomorrow = Date.today + 1
puts "date is #{date}"
puts "Tomorrow is #{tomorrow}"
code = Reminder.new(date, 'Write Code')
tests = Reminder.new(tomorrow, 'Write Tests')

login = Etc.getlogin
puts code.current_task
puts code.future_task
puts tests.current_task
puts tests.future_task

reminder_proxy = ReminderProtectionProxy.new(code, login)

p reminder_proxy
puts reminder_proxy.current_task
puts reminder_proxy.future_task