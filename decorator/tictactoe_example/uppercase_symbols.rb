require_relative 'symbol_decorator'

class UppercaseSymbols < SymbolDecorator
  def initialize(board)
    super(board)
  end

  def display_board(data)
    updated_data = data.map do |row|
      row.map { |symbol| symbol = capitalize_symbol(symbol) }
    end
    @board.display_board(updated_data)
  end

  # If letter does not match, a color has been added "\e[91m#x\e[0m"
  def capitalize_symbol(letter)
    if letter.match?(/^[a-z]$/i)
      letter.upcase
    else
      letter.gsub(/[xo]/, 'x' => 'X', 'o' => 'O')
    end
  end
end
