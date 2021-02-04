class AirTrafficCommunication

  def identify_aircraft(id)
    id.each_char do |char|
      print phonetic_translation(char.downcase) + ' '
    end
    print "\n"
  end

  private

  def phonetic_translation(char)
    NatoAlphabet.instance.translate(char)
  end
end
