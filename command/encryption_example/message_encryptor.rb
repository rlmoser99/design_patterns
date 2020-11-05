# frozen_string_literal: true

# client class
class MessageEncryptor
  def apply_caesar(string)
    Message.new(string, CaesarEncryption.new).send
  end

  def remove_caesar(string)
    Message.new(string, CaesarEncryption.new).unsend
  end

  def apply_reverse(string)
    Message.new(string, ReverseEncryption.new).send
  end

  def remove_reverse(string)
    Message.new(string, ReverseEncryption.new).unsend
  end

  def apply_traditional(string)
    Message.new(string, TraditionalEncryption.new).send
  end

  def remove_traditional(string)
    Message.new(string, TraditionalEncryption.new).unsend
  end

  def apply_triple(string)
    Message.new(string, TripleEncryption.new).send
  end

  def remove_triple(string)
    Message.new(string, TripleEncryption.new).unsend
  end
end
