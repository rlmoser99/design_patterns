# Component
require_relative 'tic_tac_toe_board'

# Decorator
require_relative 'symbol_decorator'

# Concrete Decorator
require_relative 'red_symbols'
require_relative 'blue_symbols'
require_relative 'multi_color_symbols'
require_relative 'uppercase_symbols'

# Sample data to display using the different decorators
sample_data = [['x', ' ', 'x'], ['o', ' ', ' '], ['x', ' ', 'o']]

puts 'Regular Tic-Tac-Toe Board'
regular = TicTacToeBoard.new
regular.display_board(sample_data)

puts 'Red Symbols'
red_board = RedSymbols.new(TicTacToeBoard.new)
red_board.display_board(sample_data)

puts 'Blue Symbols'
blue_board = BlueSymbols.new(TicTacToeBoard.new)
blue_board.display_board(sample_data)

puts 'Multi-Color Symbols'
multi_color_board = MultiColorSymbols.new(TicTacToeBoard.new)
multi_color_board.display_board(sample_data)

puts 'Uppercase Symbols'
uppercase = UppercaseSymbols.new(TicTacToeBoard.new)
uppercase.display_board(sample_data)

puts 'Uppercase + Multi-Color Symbols'
uppercase_multi_color = UppercaseSymbols.new(MultiColorSymbols.new(TicTacToeBoard.new))
uppercase_multi_color.display_board(sample_data)

puts 'Multi-Color + Uppercase Symbols'
multi_color_uppercase = MultiColorSymbols.new(UppercaseSymbols.new(TicTacToeBoard.new))
multi_color_uppercase.display_board(sample_data)

puts 'Red + Blue = Red Symbols'
red_blue = RedSymbols.new(BlueSymbols.new(TicTacToeBoard.new))
red_blue.display_board(sample_data)
