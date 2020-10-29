# frozen_string_literal: true

class MessageEncryptor
  def apply_plain(string)
    Message.new(string, PlainEncryption.new).send
  end

  def remove_plain(string)
    Message.new(string, PlainEncryption.new).delete
  end

  def apply_caesar(string)
    Message.new(string, CaesarEncryption.new).send
  end

  def remove_caesar(string)
    Message.new(string, CaesarEncryption.new).delete
  end

  def apply_reverse(string)
    Message.new(string, ReverseEncryption.new).send
  end

  def remove_reverse(string)
    Message.new(string, ReverseEncryption.new).delete
  end

  def apply_traditional(string)
    Message.new(string, TraditionalEncryption.new).send
  end

  def remove_traditional(string)
    Message.new(string, TraditionalEncryption.new).delete
  end

  def apply_triple(string)
    Message.new(string, TripleEncryption.new).send
  end

  def remove_triple(string)
    Message.new(string, TripleEncryption.new).delete
  end
end
