# frozen_string_literal: true

class MeanName
  def generate_nickname(context)
    split_name = context.name.partition(/[aeiouy]/)
    split_name.insert(2, insult)
    nickname = split_name.join('')
    puts nickname
  end

  def insult
    %w[DUMB SLOW FOOL BORE DULL DAFT DIM JERK].sample
  end
end
