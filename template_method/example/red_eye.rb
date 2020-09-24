# frozen_string_literal: true

class RedEye < CoffeeDrink
  def initialize
    @label = 'Red Eye'
    @cup = "\e[101m   \e[0m"
  end

  def topping
    white_on_dk_gray('                     ')
  end

  def filler
    white_on_dk_gray('                     ')
  end

  def filler_label
    white_on_dk_gray('        coffee       ')
  end

  def espresso
    white_on_black('                   ')
  end

  def espresso_label
    white_on_black('     espresso    ')
  end

  def warning
    "\e[91m(extra caffeinated)\e[0m"
  end
end
