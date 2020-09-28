# frozen_string_literal: true

class Elementary
  def output_supplies(context)
    puts "\e[36mElementary Level:\e[0m"
    context.supplies.each { |key, value| puts "  \e[36m#{value} #{key}\e[0m" }
  end
end
