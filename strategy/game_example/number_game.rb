# frozen_string_literal: true

class NumberGame
  attr_accessor :feedback
  attr_reader :solution, :guess

  def initialize(feedback)
    @feedback = feedback
    @solution = rand(0..9)
    @guess = guess
  end

  def play
    puts 'Guess the random number between 0 and 9!'
    turn_order until game_over?
    puts 'GAME OVER!'
  end

  def turn_order
    player_turn
    feedback.generate_feedback(self) unless game_over?
  end

  def player_turn
    loop do
      @guess = verify_input(player_input)
      break if @guess

      puts 'Input error!'
    end
  end

  def verify_input(number)
    return number if number.match?(/^[0-9]$/)
  end

  def game_over?
    guess == solution.to_s
  end

  private

  def player_input
    puts 'Choose a digit between 0 and 9'
    gets.chomp
  end
end
