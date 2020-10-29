# frozen_string_literal: true

# Abstract Command and Concrete Commands
require_relative 'encryption'

# Abstract Composite Command and Concrete Composite Command
require_relative 'multi_encryption'

# Invoker
require_relative 'message'

# Client that uses message
require_relative 'message_manager'

# should ultra one keep track of one by one (decrypt one at a time?)
# Create "real" unexecute methods!
# Invoker is the Message
# WHAT SHOULD BE THE CLIENT?

# CREATE A PROPER UNDO & THEN MANAGER ONLY NEEDS TWO CLASSES!

puts 'CLIENT:'
test = MessageManager.new
puts test.post_greeting
puts test.remove_greeting
puts test.post_reply
puts test.remove_reply
puts test.post_question
puts test.remove_question
puts test.post_warning
puts test.remove_warning
puts test.post_farewell
puts test.remove_farewell

# puts 'NOT USING CLIENT:'
# test = 'Have fun storming the castle'
# test_msg = Message.new(test, PlainEncryption.new)
# puts test_msg.send
# puts test_msg.delete

# email_info = 'Have fun storming the castle'
# email = Message.new(email_info, CaesarEncryption.new)
# puts email.send
# puts email.delete

# text_info = 'Anybody want a peanut'
# text_message = Message.new(text_info, ReverseEncryption.new)
# puts text_message.send
# puts text_message.delete

# brother_info = 'You are the Brute Squad'
# brother_email = Message.new(brother_info, TraditionalEncryption.new)
# puts brother_email.send
# puts brother_email.delete

# CHANGE add_cipher to add_encryption

# ultra = UltraEncryption.new
# ultra.add_cipher(CaesarEncryption.new)
# ultra.add_cipher(ReverseEncryption.new)
# ultra.add_cipher(TraditionalEncryption.new)

# secret_info = 'Hello my name is Inigo Montoya'
# secret = Message.new(secret_info, ultra)
# puts secret.send
# puts secret.delete
