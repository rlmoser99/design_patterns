# frozen_string_literal: true

class Message
  attr_accessor :encryption

  def initialize(message, encryption)
    @message = message
    @encryption = encryption
  end

  def send
    @encryption&.execute(@message)
  end

  def delete
    @encryption&.unexecute(@message)
  end
end
