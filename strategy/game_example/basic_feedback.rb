# frozen_string_literal: true

class BasicFeedback
  def generate_feedback(context)
    if context.guess.to_i > context.solution.to_i
      puts 'Your guess was too high!'
    else
      puts 'Your guess was too low!'
    end
    # puts "The solution is #{context.solution}"
  end
end
