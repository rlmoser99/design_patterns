require_relative 'symbol_decorator'

class BlueSymbols < SymbolDecorator
  def initialize(board)
    super(board)
  end

  def display_board(data)
    updated_data = data.map do |row|
      row.map { |symbol| symbol = blue_format(symbol) }
    end
    @board.display_board(updated_data)
  end

  def blue_format(letter)
    "\e[34m#{letter}\e[0m"
  end
end
