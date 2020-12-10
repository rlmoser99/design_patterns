require_relative 'symbol_decorator'

class MultiColorSymbols < SymbolDecorator
  def initialize(board)
    super(board)
  end

  def display_board(data)
    updated_data = data.map do |row|
      row.map { |symbol| symbol = color_format(symbol) }
    end
    @board.display_board(updated_data)
  end

  def color_format(letter)
    letter.downcase == 'x' ? "\e[34m#{letter}\e[0m" : "\e[91m#{letter}\e[0m"
  end
end
