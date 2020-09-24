# frozen_string_literal: true

class Americano < Coffee
  def initialize
    @label = 'Americano'
    @cup = "\e[103m   \e[0m"
  end

  def topping
    white_on_lt_blue('                     ')
  end

  def filler
    white_on_lt_blue('                     ')
  end

  def filler_label
    white_on_lt_blue('      hot water      ')
  end

  def espresso
    white_on_black('                   ')
  end

  def espresso_label
    white_on_black('     espresso    ')
  end
end
