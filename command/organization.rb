# frozen_string_literal: true

# The client creates a ConcreteCommand object and specifies its receiver.
class Client
  def initialize(receiver)
    @command = Command.new(receiver)
    @receiver = receiver
  end
end

# An Invoker object stores the ConcreteCommand object.
class Invoker
  def initialize(command)
    @command = command
  end
end

# The invoker issues a request by calling Execute on the command.
class Invoker
  def initialize(command)
    @command = command
  end

  def execute
    @command.execute
  end

  def unexecute
    @command.unexecute
  end
end

# The ConcreteCommand object invokes operations on its receiver to carry out the request.

class Command
  def initialize(command, receiver)
    @command = command
    @receiver = receiver
  end

  def execute
    @receiver.command.execute
  end

  def unexecute
    @receiver.command.unexecute
  end
end
