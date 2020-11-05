# frozen_string_literal: true

# Command Class:
require_relative 'encryption'

# Composite Command Class:
require_relative 'multi_encryption'

# Invoker Class:
require_relative 'message'

# Client Class:
# creates a new message (invoker) each time it applies or removes "encryption"
require_relative 'message_encryptor'
encryptor = MessageEncryptor.new

puts "\nCaesar Cipher Encryption execute/unexecute:"
greeting = encryptor.apply_caesar('Hello my name is Inigo Montoya')
puts greeting
puts encryptor.remove_caesar(greeting)

puts "\nWord Reverse Encryption execute/unexecute:"
question = encryptor.apply_reverse('anybody want a peanut')
puts question
puts encryptor.remove_reverse(question)

puts "\nTraditional Cipher Encryption execute/unexecute:"
warning = encryptor.apply_traditional('people in masks cannot be trusted')
puts warning
puts encryptor.remove_traditional(warning)

puts "\nComposite Encryption (Caesar, Reverse, Traditional) execute/unexecute:"
farewell = encryptor.apply_triple('have fun storming the castle')
puts farewell
puts encryptor.remove_triple(farewell)
