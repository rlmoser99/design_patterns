# frozen_string_literal: true

class Payroll
  def update(employee)
    puts "Cut a new check for #{employee.name}!"
    puts "Their salary is now #{employee.salary}!"
  end
end
