# frozen_string_literal: true

class EncouragingName
  def generate_nickname(context)
    letter = context.name[0].downcase
    puts "#{description(letter)} #{context.name}"
  end

  def description(letter)
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
      'm' => 'Magnificent',
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
