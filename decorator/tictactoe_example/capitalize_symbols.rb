require_relative 'board_decorator'

class CapitalizeSymbols < BoardDecorator
  def initialize(real_board)
    super(real_board)
  end

  def write_board(data)
    new_board = data.map do |row|
      row.map { |item| item = capitalize_symbol(item) }
    end
    @real_board.write_board(new_board)
  end

  def capitalize_symbol(symbol)
    if symbol.match?(/^[a-z]$/i)
      symbol.upcase
    else
      find_symbol(symbol)
    end
  end

  def find_symbol(symbol)
    symbol.gsub(/[xo]/, 'x' => 'X', 'o' => 'O')
  end
end
