# frozen_string_literal: true

class MultiEncryption < Encryption
  def initialize
    @encryptions = []
  end

  def add_encryption(encryption)
    @encryptions << encryption
  end

  def execute(string)
    result = [string]
    @encryptions.each do |encryption|
      phrase = encryption.execute(result[-1])
      result << phrase
    end
    result[-1]
  end

  def unexecute(string)
    result = [string]
    @encryptions.reverse.each do |encryption|
      phrase = encryption.unexecute(result[-1])
      result << phrase
    end
    result[-1]
  end
end

class TripleEncryption < MultiEncryption
  def initialize
    @encryptions = []
    add_encryption(CaesarEncryption.new)
    add_encryption(ReverseEncryption.new)
    add_encryption(TraditionalEncryption.new)
  end
end
