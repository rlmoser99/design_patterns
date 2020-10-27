# frozen_string_literal: false

# abstract command class
class Cipher
  def initialize(string)
    @incoming_string = string
    @outgoing_string = nil
  end

  def create_code
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def undo
    @incoming_string
  end
end

class CaesarCipher < Cipher
  def initialize(string)
    super(string)
  end

  def create_code(result = '')
    @incoming_string.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      result << character_shift(char, base)
    end
    @outgoing_string = result
  end

  private

  def character_shift(char, base)
    shift = rand(26)
    char_num = char.ord
    if char_num.between?(65, 90) || char_num.between?(97, 122)
      rotation = (((char_num - base) + shift) % 26) + base
      rotation.chr
    else
      char
    end
  end
end

class ReverseCipher < Cipher
  def initialize(string)
    super(string)
  end

  def create_code
    @outgoing_string = @incoming_string.reverse
  end
end

class RotateCipher < Cipher
  def initialize(string)
    super(string)
  end

  def create_code
    array = @incoming_string.split(//)
    shift = rand(array.length)
    result = array.rotate(shift)
    @outgoing_string = result.join
  end
end
