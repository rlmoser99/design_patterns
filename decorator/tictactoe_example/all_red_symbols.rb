require_relative 'board_decorator'

class AllRedSymbols < BoardDecorator
  def initialize(real_board)
    super(real_board)
  end

  def write_board(data)
    new_board = data.map do |row|
      row.map { |item| item = red_format(item) }
    end
    @real_board.write_board(new_board)
  end

  def red_format(token)
    "\e[91m#{token}\e[0m"
  end
end
