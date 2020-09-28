# frozen_string_literal: true

class HighSchool
  def output_supplies(context)
    puts "\e[36mHigh School Level:\e[0m"
    reduced_supplies = context.supplies.transform_values { |value| value / 2 }
    reduced_supplies.each do |key, value|
      puts "  \e[36m#{value} #{key}\e[0m" if value.positive?
    end
  end
end
