# frozen_string_literal: true

require_relative 'schedule'
require_relative 'parent'
require_relative 'teacher'
require_relative 'child'

schedule = Schedule.new(Teacher.new)
schedule.to_s

schedule.audience = Parent.new
schedule.to_s

schedule.audience = Child.new
schedule.to_s
