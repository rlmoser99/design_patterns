# frozen_string_literal: true

class MeanGenerator
  def generate_nickname(context)
    letter = context.name[0]
    nickname = namemaker(letter.downcase)
    puts "#{nickname} #{context.name}"
  end

  def namemaker(letter)
    {
      'a' => 'Annoying',
      'b' => 'Bossy',
      'c' => 'Clumsy',
      'd' => 'Despicable',
      'e' => 'E',
      'f' => 'F',
      'g' => 'Greedy',
      'h' => 'Hopeless',
      'i' => 'Incompetent',
      'j' => 'J',
      'k' => 'K',
      'l' => 'Lazy',
      'm' => 'Miserable',
      'n' => 'Nosy',
      'o' => 'O',
      'p' => 'Pathetic',
      'q' => 'Q',
      'r' => 'R',
      's' => 'Selfish',
      't' => 'T',
      'u' => 'U',
      'v' => 'Vile',
      'w' => 'Wretched',
      'x' => 'X',
      'y' => 'Y',
      'z' => 'Z'
    }[letter]
  end
end
