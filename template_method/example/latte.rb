# frozen_string_literal: true

class Latte < Coffee
  def initialize
    @label = 'Latte'
    @cup = "\e[46m   \e[0m"
  end

  def topping
    black_on_lt_gray('      milk foam      ')
  end

  def filler
    black_on_white('                     ')
  end

  def filler_label
    black_on_white('    steamed milk     ')
  end

  def espresso
    white_on_black('                   ')
  end

  def espresso_label
    white_on_black('     espresso    ')
  end
end
