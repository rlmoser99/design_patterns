class Reminder
  attr_reader :task

  def initialize(date, task)
    @date = date
    @task = task
  end

  def current_task
    puts "\e[36m#{@task}\e[0m" if @date == Date.today
  end

  def future_task
    puts "\e[31m#{@task}\e[0m" if @date > Date.today
  end
end