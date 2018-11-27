class PigLatinizer

  def piglatinize(sentence)
    words = sentence.split(" ")

    if words.size > 1
      sentence(words)
    else
      piglatinize_word(words)
    end

  end

  def piglatinize_word(word)
    letters = word.first.split("")

    if letters.size == 1
      individual_word(letters)
    else
      first = ""
      middle = ""

      letters.each_with_index do |letter, index|
        first = word.first.slice(index, word.first.size)
        middle = word.first.slice(0, index)
        break if letter.scan(/[aeiou]/) != []
      end

       first + middle + "ay"
    end
  end

  def individual_word(word)
    word.first + "way"
  end

  def sentence(words)
    translated_sentence = []

    words.each do |word|
      translated_sentence << piglatinize(word)
    end

    translated_sentence.join(" ")
  end

end
