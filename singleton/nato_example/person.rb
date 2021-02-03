class Person
  def initialize(first, last)
    @first = first
    @last = last
    @comm = VerbalCommunicator.new
  end

  def verbal_last_name
    @comm.verbal_spelling(@last)
  end
end
