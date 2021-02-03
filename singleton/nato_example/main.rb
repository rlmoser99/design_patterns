# Singleton using the Ruby module
require_relative 'nato_alphabet'

# classes that need to use the singleton
require_relative 'verbal_communicator'
require_relative 'air_traffic_comm'

require_relative 'plane'
require_relative 'person'

plane = Plane.new('N719BW')
puts 'Please identify your aircraft.'
plane.identify

puts

person = Person.new('Leslie', 'Bartusiak')
puts 'Can you spell your last name for me?'
person.verbal_last_name
