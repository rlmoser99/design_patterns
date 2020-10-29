# frozen_string_literal: false

# abstract command class
class Cipher
  attr_reader :incoming_string

  def initialize
    @incoming_string = nil
    @outgoing_string = nil
  end

  def execute
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def unexecute
    "\e[31m#{@incoming_string}\e[0m"
  end
end

class CaesarCipher < Cipher
  def execute(string, result = '')
    @incoming_string = string
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
  def execute(string)
    @incoming_string = string
    @outgoing_string = @incoming_string.reverse.downcase
    @outgoing_string
  end
end

# class RotateCipher < Cipher
#   def initialize(string)
#     super(string)
#   end

#   def execute
#     array = @incoming_string.downcase.split(//)
#     shift = rand(array.length)
#     result = array.rotate(shift)
#     @outgoing_string = result.join
#   end
# end

# MAKE A SHUFFLE LETTER CIPHER?

# Maybe actually create "real" unexecute methods.

class TraditionalCipher < Cipher
  def execute(string)
    @incoming_string = string
    phrase = @incoming_string.downcase
    code = phrase.gsub(/[a-z]/, cipher)
    @outgoing_string = code
  end

  # rubocop: disable Layout/LineLength
  def cipher
    { 'a' => '@', 'b' => 'q', 'c' => 'l', 'd' => 'w', 'e' => 'n', 'f' => 'r', 'g' => 't', 'h' => 'y', 'i' => '!', 'j' => 'u', 'k' => '&', 'l' => 'i', 'm' => 'o', 'n' => 'p', 'o' => '*', 'p' => 'a', 'q' => 's', 'r' => 'd', 's' => '$', 't' => 'f', 'u' => 'g', 'v' => 'h', 'w' => '#', 'x' => '%', 'y' => 'j', 'z' => 'k' }
  end
end

# def cipher
#   { 'a' => '', 'b' => '', 'c' => '', 'd' => '', 'e' => '', 'f' => '', 'g' => '', 'h' => '', 'i' => '', 'j' => '', 'k' => '', 'l' => '', 'm' => '', 'n' => '', 'o' => '', 'p' => '', 'q' => '', 'r' => '', 's' => '', 't' => '', 'u' => '', 'v' => '', 'w' => '', 'x' => '', 'y' => '', 'z' => '' }
# end

# rubocop: enable Layout/LineLength
