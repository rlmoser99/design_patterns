# frozen_string_literal: true

class Message
  attr_accessor :command

  def initialize(text, command)
    @text = text
    @command = command
  end

  def encrypt
    @command&.execute(@text)
  end

  def decrypt
    @command&.unexecute
  end
end
