require_relative 'board'
require_relative 'board_decorator'
require_relative 'all_red_symbols'
require_relative 'all_blue_symbols'
require_relative 'red_blue_symbols'
require_relative 'capitalize_symbols'

# require_relative 'time_stamping_writer'

# writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
# writer.write_line('Hello out there')

# writer_all = TimeStampingWriter.new(
#   NumberingWriter.new(SimpleWriter.new('final_all.txt')))
# writer_all.write_line('Hello out there')

sample_board = [['x', ' ', 'o'], ['o', ' ', ' '], ['x', ' ', ' ']]
game = Board.new
# game.write_board(sample_board)

red_game = AllRedSymbols.new(Board.new)
# red_game.write_board(sample_board)

blue_game = AllBlueSymbols.new(Board.new)
# blue_game.write_board(sample_board)

mixed_game = RedBlueSymbols.new(Board.new)
# mixed_game.write_board(sample_board)

capitalized = CapitalizeSymbols.new(Board.new)
capitalized.write_board(sample_board)

mixed_capitalized = CapitalizeSymbols.new(RedBlueSymbols.new(Board.new))
mixed_capitalized.write_board(sample_board)

# CAN NOT BE REVERSED RIGHT NOW!!!
reversed = RedBlueSymbols.new(CapitalizeSymbols.new(Board.new))
reversed.write_board(sample_board)

# COLORS DOUBLED UP WILL BE FIRST ONE CALLED ???
# red_blue = AllRedSymbols.new(AllBlueSymbols.new(Board.new))
# red_blue.write_board(sample_board)


# rework wording - symbol, token, etc?

