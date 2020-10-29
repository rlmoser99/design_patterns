# frozen_string_literal: true

class UltraCipher < Cipher
  def initialize
    @ciphers = []
  end

  def add_cipher(cipher)
    @ciphers << cipher
  end

  def execute(string)
    result = [string]
    @ciphers.each do |cipher|
      phrase = cipher.execute(result[-1])
      result << phrase
    end
    result[-1]
  end

  def unexecute
    "\e[31m#{@ciphers[0].incoming_string}\e[0m"
  end
end
