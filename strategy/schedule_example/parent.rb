# frozen_string_literal: true

class Parent
  def to_s(context)
    puts("***** #{context.title} *****")
    context.text.each do |line|
      puts(line)
    end
  end
end
