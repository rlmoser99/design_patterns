# frozen_string_literal: true

class MeanName
  def generate_introduction(context)
    split_name = context.name.partition(/[aeiouy]/)
    description = insult
    split_name.insert(2, description)
    nickname = split_name.join('')
    sentence = context.sentence
    puts "#{nickname} #{sentence[:start]} #{description.downcase} #{sentence[:final]}"
  end

  def insult
    %w[DUMB SLOW DULL DAFT DIM].sample
  end
end
