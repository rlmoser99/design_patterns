# frozen_string_literal: true

require_relative 'cipher'
require_relative 'message'
require_relative 'ultra_cipher'

# only keep ciphers that keep same word numbers!

# quote = 'As you wish'
# quote = 'Anybody want a peanut'
# quote = 'You are the Brute Squad'

email_info = 'Have fun storming the castle'
email = Message.new(email_info, CaesarCipher.new)
puts email.encrypt
puts email.decrypt

text_info = 'Anybody want a peanut'
text_message = Message.new(text_info, ReverseCipher.new)
puts text_message.encrypt
puts text_message.decrypt

ultra = UltraCipher.new
ultra.add_cipher(CaesarCipher.new)
ultra.add_cipher(ReverseCipher.new)

secret_info = 'Hello my name is Inigo Montoya'
secret = Message.new(secret_info, ultra)
puts secret.encrypt
puts secret.decrypt
