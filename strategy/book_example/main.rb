# frozen_string_literal: true

require_relative 'report'

HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title>")
  puts('  </head>')
  puts('  <body>')
  context.text.each do |line|
    puts("    <p>#{line}</p>")
  end
  puts('  </body>')
  puts('</html>')
end

PLAIN_TEXT_FORMATTER = lambda do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
    puts(line)
  end
end

report = Report.new(&HTML_FORMATTER)
report.output_report

report.formatter = PLAIN_TEXT_FORMATTER
report.output_report
