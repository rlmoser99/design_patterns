class VerbalCommunicator
  def verbal_spelling(word)
    word.each_char do |char|
      puts "#{char.upcase} as in #{phonetic_translation(char.downcase)}"
    end
  end

  private

  def phonetic_translation(char)
    NatoAlphabet.instance.translate(char)
  end
end
