# frozen_string_literal: true

# Command Class:
require_relative 'encryption'

# Composite Command Class:
require_relative 'multi_encryption'

# Invoker Class:
require_relative 'message'

# Client Class:
require_relative 'message_encryptor'

encryptor = MessageEncryptor.new

puts 'Plain Text execute/unexecute:'
greeting = encryptor.apply_plain('Hello my name is Inigo Montoya')
puts greeting
puts encryptor.remove_plain(greeting)

puts "\nCaesar Cipher Encryption execute/unexecute:"
reply = encryptor.apply_caesar('you are the brute squad')
puts reply
puts encryptor.remove_caesar(reply)

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
