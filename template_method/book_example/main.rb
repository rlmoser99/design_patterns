# frozen_string_literal: true

require_relative 'report'
require_relative 'plain_text_report'
require_relative 'html_report'

report = PlainTextReport.new
report.output_report

web_report = HTMLReport.new
web_report.output_report
