class Person
  def initialize(first, last)
    @first = first
    @last = last
    @verbal = VerbalAssistance.new
  end

  def spell_last_name
    @verbal.expanded_spelling(@last)
  end
end
