# frozen_string_literal: true

require_relative 'report'
require_relative 'plain_text_formatter'
require_relative 'html_formatter'

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report
