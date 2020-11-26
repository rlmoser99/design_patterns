class SecretReminder
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