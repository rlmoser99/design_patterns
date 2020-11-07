# frozen_string_literal: true

# An Invoker object stores the ConcreteCommand object.

# The invoker issues a request by calling Execute on the command.

class Encryptor
  def initialize(message, encryption)
    @message = message
    @encryption = encryption
  end

  def execute
    @message.data = @encryption&.execute(@message.data)
  end

  def unexecute
    @message.data = @encryption&.unexecute(@message.data)
  end
end
