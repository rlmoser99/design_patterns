# frozen_string_literal: true

class MeanName
  def generate_introduction(context)
    split_name = context.name.partition(/[aeiouy]/)
    description = insult
    split_name.insert(2, description)
    nickname = split_name.join('')
    puts "#{nickname}, because they can be a #{description.downcase} #{context.profession}.\n\n"
  end

  def insult
    %w[DUMB SLOW DULL DAFT DIM].sample
  end
end
