require_relative 'symbol_decorator'

class RedSymbols < SymbolDecorator
  def initialize(board)
    super(board)
  end

  def display_board(data)
    updated_data = data.map do |row|
      row.map { |symbol| symbol = red_format(symbol) }
    end
    @board.display_board(updated_data)
  end

  def red_format(letter)
    "\e[91m#{letter}\e[0m"
  end
end
