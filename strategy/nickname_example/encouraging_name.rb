# frozen_string_literal: true

class EncouragingName
  def generate_introduction(context)
    letter = context.name[0].downcase
    description = description(letter)
    sentence = context.sentence
    puts "#{description} #{context.name} #{sentence[:start]} #{description.downcase} #{sentence[:final]}"
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
