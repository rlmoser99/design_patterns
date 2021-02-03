class AirTrafficComm < VerbalCommunicator
  def identify_aircraft(id)
    id.each_char do |char|
      print phonetic_translation(char.downcase) + ' '
    end
    print "\n"
  end
end
