require 'forwardable'

class SymbolDecorator
  extend Forwardable
  
  def_delegators :@board, :display_board
  
  def initialize(board)
    @board = board
  end
end
