# frozen_string_literal: true

class NiceGenerator
  def generate_nickname(context)
    letter = context.name[0]
    nickname = namemaker(letter.downcase)
    puts "#{nickname} #{context.name}"
  end

  def namemaker(letter)
    {
      'a' => 'Amazing',
      'b' => 'Brilliant',
      'c' => 'Creative',
      'd' => 'Distinguished',
      'e' => 'Enthusiastic',
      'f' => 'Fantastic',
      'g' => 'Generous',
      'h' => 'Honest',
      'i' => 'Impressive',
      'j' => 'Jovial',
      'k' => 'Knowledgeable',
      'l' => 'Legendary',
      'm' => 'Masterful',
      'n' => 'Novel',
      'o' => 'Optimistic',
      'p' => 'Phenomenal',
      'q' => 'Quiet',
      'r' => 'Remarkable',
      's' => 'Special',
      't' => 'Terrific',
      'u' => 'Upstanding',
      'v' => 'Victorious',
      'w' => 'Wonderful',
      'x' => 'eXtraordinary',
      'y' => 'Youthful',
      'z' => 'Zanny'
    }[letter]
  end
end
