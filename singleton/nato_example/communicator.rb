class Communicator
  def phonetic_spelling(word)
    word.each_char { |char| puts phonetic_translation(char) }
  end

  private

  def phonetic_translation(char)
    NatoAlphabet.instance.translate(char)
  end
end
