class PigLatinizer

  def piglatinize(sentence)
    words = words.split(" ")

    if word.size > 1
      sentence(word)
    else
      piglatinize_word(words)
    end

  end

  def piglatinize_word(word)
    letters = word.split("")

    if letters.size == 1
      individual_word(letters)
    else
      first = ""
      middle = ""

      letters.each_with_index do |letter, index|
        first = word.slice(index, word.size)
        middle = word.slice(0, index)
        break if letter.scan(/[aeiou]/) != []
      end

      first + middle + "ay"
    end
  end

  def individual_word(word)
    word + "way"
  end

  def sentence(words)
    translated_sentence = ""
    words.map do |word|
      translated_sentence += piglatinize(word)
    end

    translated_sentence
  end

end
