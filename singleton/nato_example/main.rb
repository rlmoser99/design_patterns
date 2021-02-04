# Singleton using the Ruby module
require_relative 'nato_alphabet'

# classes that use the singleton for different purposes
require_relative 'verbal_assistance'
require_relative 'air_traffic_communication'

require_relative 'plane'
require_relative 'person'

plane = Plane.new('N719BW')
puts 'Air Traffic Tower:'
puts 'Please identify your aircraft.'
plane.identify

puts

person = Person.new('Leslie', 'Bartusiak')
puts 'Customer Service Rep:'
puts 'Can you spell your last name for me?'
person.spell_last_name
