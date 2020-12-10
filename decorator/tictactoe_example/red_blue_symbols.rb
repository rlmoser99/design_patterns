require_relative 'board_decorator'

class RedBlueSymbols < BoardDecorator
  def initialize(real_board)
    super(real_board)
  end

  def write_board(data)
    new_board = data.map do |row|
      row.map { |item| item = color_format(item) }
    end
    @real_board.write_board(new_board)
  end

  def color_format(token)
    token.downcase == 'x' ? "\e[34m#{token}\e[0m" : "\e[91m#{token}\e[0m"
  end
end
