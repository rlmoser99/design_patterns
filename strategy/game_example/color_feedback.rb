# frozen_string_literal: true

class ColorFeedback
  def generate_feedback(context)
    if context.guess.to_i > context.solution.to_i
      puts "\e[91mYour guess was too high!\e[0m"
      print_range((context.guess.to_i..9).to_a)
    else
      puts "\e[91mYour guess was too low!\e[0m"
      print_range((0..context.guess.to_i).to_a)
    end
    # puts "The solution is #{context.solution}"
  end

  def print_range(wrong_numbers)
    range = (0..9).to_a
    range.each do |number|
      if wrong_numbers.include?(number)
        print "\e[91m#{number} \e[0m"
      else
        print "#{number} "
      end
    end
    puts
  end
end
