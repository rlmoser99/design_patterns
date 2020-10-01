# frozen_string_literal: true

class EncouragingName
  def generate_introduction(context)
    letter = context.name[0].downcase
    description = description(letter)
    puts "#{description} #{context.name}, because they can be a #{description.downcase} #{context.profession}.\n\n"
  end

  def description(letter)
    {
      'a' => 'Amazing',
      'b' => 'Brilliant',
      'c' => 'Creative',
      'd' => 'Distinguished',
      'e' => 'Enthusiastic',
      'f' => 'Fantastic',
      'g' => 'Genius',
      'h' => 'Honest',
      'i' => 'Impressive',
      'j' => 'Jovial',
      'k' => 'Knowledgeable',
      'l' => 'Legendary',
      'm' => 'Magnificent',
      'n' => 'Nice',
      'o' => 'Optimistic',
      'p' => 'Phenomenal',
      'q' => 'Quiet',
      'r' => 'Remarkable',
      's' => 'Special',
      't' => 'Terrific',
      'u' => 'Upstanding',
      'v' => 'Vibrant',
      'w' => 'Wonderful',
      'x' => 'eXtraordinary',
      'y' => 'Youthful',
      'z' => 'Zanny'
    }[letter]
  end
end
