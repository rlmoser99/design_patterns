# frozen_string_literal: true

class EncouragingMood < Mood
  def generate_introduction(context)
    name = context.name
    description = generate_description(name[0].downcase)
    puts "This is #{name}, or as we like to say, #{description} #{name}, because they are a #{description.downcase} #{context.profession}.\n\n"
  end

  private

  def generate_description(letter)
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
