# frozen_string_literal: true

class CoffeeDrink
  def initialize
    @cup = "\e[46m   \e[0m"
  end

  def to_s
    puts <<~HEREDOC

      #{@cup}#{topping}#{@cup}
      #{@cup}#{filler}#{@cup}#{@cup}
      #{@cup}#{filler}#{@cup}  #{@cup}
      #{@cup}#{filler}#{@cup}   #{@cup}
      #{@cup}#{filler_label}#{@cup}  #{@cup}
      #{@cup}#{filler}#{@cup}#{@cup}
       #{@cup}#{espresso}#{@cup}
        #{@cup}#{espresso_label}#{@cup}
         #{@cup}#{@cup}#{@cup}#{@cup}#{@cup}#{@cup}#{@cup}

                #{@label}
          #{warning}

    HEREDOC
  end

  def topping
    raise 'Called abstract method: topping'
  end

  def filler
    raise 'Called abstract method: filler'
  end

  def filler_label
    raise 'Called abstract method: filler_label'
  end

  def espresso
    raise 'Called abstract method: espresso'
  end

  def espresso_label
    raise 'Called abstract method: espresso_label'
  end

  def warning
    raise 'Called abstract method: warning'
  end

  private

  def white_on_dk_gray(string)
    "\e[100m#{string}\e[0m"
  end

  def white_on_black(string)
    "\e[49m#{string}\e[0m"
  end

  def white_on_lt_blue(string)
    "\e[104m#{string}\e[0m"
  end

  def black_on_white(string)
    "\e[30;107m#{string}\e[0m"
  end

  def black_on_lt_gray(string)
    "\e[30;47m#{string}\e[0m"
  end
end
