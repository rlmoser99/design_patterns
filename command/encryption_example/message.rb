# frozen_string_literal: true

# invoker class
class Message
  def initialize(message, encryption)
    @message = message
    @encryption = encryption
  end

  def send
    @encryption&.execute(@message)
  end

  def unsend
    @encryption&.unexecute(@message)
  end
end
