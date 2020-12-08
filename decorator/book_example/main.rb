require_relative 'numbering_writer'
require_relative 'simple_writer'
require_relative 'time_stamping_writer'
require_relative 'writer_decorator'

writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
writer.write_line('Hello out there')

writer_all = TimeStampingWriter.new(
  NumberingWriter.new(SimpleWriter.new('final_all.txt')))
writer_all.write_line('Hello out there')
