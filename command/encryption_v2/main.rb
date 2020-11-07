# frozen_string_literal: true

# Command Class:
require_relative 'encryption'

# Composite Command Class:
require_relative 'multi_encryption'

# Invoker Class:
require_relative 'encryptor'

# Receiver Class:
require_relative 'message'

# receivers
greeting = Message.new('Hello my name is Inigo Montoya')
question = Message.new('anybody want a peanut')
warning = Message.new('people in masks cannot be trusted')
farewell = Message.new('have fun storming the castle')

puts "\nCaesar Cipher Encryptor:"
puts greeting.to_s
caesar_encryptor = Encryptor.new(greeting, CaesarEncryption.new)
caesar_encryptor.execute
puts greeting.to_s
caesar_encryptor.unexecute
puts greeting.to_s

puts "\nWord Reverse Encryptor:"
puts question.to_s
reverse_encryptor = Encryptor.new(question, ReverseEncryption.new)
reverse_encryptor.execute
puts question.to_s
reverse_encryptor.unexecute
puts question.to_s

puts "\nTraditional Cipher Encryptor:"
puts warning.to_s
traditional_encryptor = Encryptor.new(warning, TraditionalEncryption.new)
traditional_encryptor.execute
puts warning.to_s
traditional_encryptor.unexecute
puts warning.to_s

puts "\nTriple Encryptor:"
puts farewell.to_s
triple_encryptor = Encryptor.new(farewell, TripleEncryption.new)
triple_encryptor.execute
puts farewell.to_s
triple_encryptor.unexecute
puts farewell.to_s
