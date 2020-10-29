# frozen_string_literal: true

class MessageManager
  attr_reader :greeting

  def initialize
    @greeting = Message.new('Hello my name is Inigo Montoya', PlainEncryption.new)
    @reply = Message.new('You are the Brute Squad', CaesarEncryption.new)
    @question = Message.new('Anybody want a peanut', ReverseEncryption.new)
    @warning = Message.new('People in masks cannot be trusted', TraditionalEncryption.new)
    @farewell = Message.new('Have fun storming the castle', TripleEncryption.new)
  end

  def post_greeting
    @greeting.send
  end

  def remove_greeting
    @greeting.delete
  end

  def post_reply
    @reply.send
  end

  def remove_reply
    @reply.delete
  end

  def post_question
    @question.send
  end

  def remove_question
    @question.delete
  end

  def post_warning
    @warning.send
  end

  def remove_warning
    @warning.delete
  end

  def post_farewell
    @farewell.send
  end

  def remove_farewell
    @farewell.delete
  end
end
