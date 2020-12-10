class TicTacToeBoard
  attr_reader :data

  def initialize(data = Array.new(3) { Array.new(3, ' ')} )
    @data = data
  end

  def display_board(data)
    puts <<~HEREDOC

       #{data[0][0]} | #{data[0][1]} | #{data[0][2]}
      ---+---+---
       #{data[1][0]} | #{data[1][1]} | #{data[1][2]}
      ---+---+---
       #{data[2][0]} | #{data[2][1]} | #{data[2][2]}


    HEREDOC
  end
end
