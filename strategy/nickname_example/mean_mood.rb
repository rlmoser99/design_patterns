# frozen_string_literal: true

class MeanMood < Mood
  def generate_introduction(context)
    insult = generate_insult
    nickname = generate_nickname(context.name, insult)
    puts "This is #{context.name}, or as we jokingly say, #{nickname}, because they can be a #{insult.downcase} #{context.profession}.\n\n"
  end

  private

  def generate_nickname(name, insult)
    split_name = name.partition(/[aeiouy]/)
    split_name.insert(2, insult)
    split_name.join('')
  end

  def generate_insult
    %w[DUMB SLOW DULL DAFT DIM].sample
  end
end
