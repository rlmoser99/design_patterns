require 'forwardable'

class BoardDecorator
  extend Forwardable
  
  def_delegators :@real_writer, :write_board
  
  def initialize(real_board)
    @real_board = real_board
  end
end
