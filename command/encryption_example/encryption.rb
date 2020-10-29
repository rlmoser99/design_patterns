# frozen_string_literal: false

# abstract command class
class Encryption
  attr_reader :incoming_string

  def execute
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def unexecute(string)
    string
  end
end

class PlainEncryption < Encryption
  def execute(string)
    string
  end
end

class CaesarEncryption < Encryption
  def execute(string, result = '')
    string.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      result << character_shift(char, base, 5)
    end
    result
  end

  def unexecute(string, result = '')
    string.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      result << character_shift(char, base, -5)
    end
    result
  end

  private

  def character_shift(char, base, shift)
    char_num = char.ord
    if char_num.between?(65, 90) || char_num.between?(97, 122)
      rotation = (((char_num - base) + shift) % 26) + base
      rotation.chr
    else
      char
    end
  end
end

class ReverseEncryption < Encryption
  def execute(string)
    reverse_words = string.split(' ').map { |word| word.reverse.downcase }
    reverse_words.join(' ')
  end

  def unexecute(string)
    reverse_words = string.split(' ').map { |word| word.reverse.downcase }
    reverse_words.join(' ')
  end
end

class TraditionalEncryption < Encryption
  def execute(string)
    string.downcase.gsub(/[a-z]/, cipher)
  end

  def unexecute(string)
    string.downcase.gsub(/[a-z]/, cipher.invert)
  end

  # rubocop: disable Layout/LineLength
  def cipher
    { 'a' => 'q', 'b' => 'w', 'c' => 'e', 'd' => 'r', 'e' => 't', 'f' => 'y', 'g' => 'u', 'h' => 'i', 'i' => 'o', 'j' => 'p', 'k' => 'a', 'l' => 's', 'm' => 'd', 'n' => 'f', 'o' => 'g', 'p' => 'h', 'q' => 'j', 'r' => 'k', 's' => 'l', 't' => 'z', 'u' => 'x', 'v' => 'c', 'w' => 'v', 'x' => 'b', 'y' => 'n', 'z' => 'm' }
  end
  # rubocop: enable Layout/LineLength
end
