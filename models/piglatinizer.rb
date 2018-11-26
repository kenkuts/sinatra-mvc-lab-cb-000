class PigLatinizer

  def piglatinize(words)
    words = word.split(" ")

    if words.size > 1
      sentence(words)
    end

  end

  def piglatinize_word(word)
    letters = word.split("")
    if letters.size == 1
      individual_word(letters)
    first = ""
    middle = ""

    letters.each_with_index do |letter, index|
      first = word.slice(index, word.size)
      middle = word.slice(0, index)
      break if letter.scan(/[aeiou]/) != []
    end

    first + middle + "ay"
  end

  def individual_word(word)
    word + "way"
  end

  def sentence(words)
    translated_sentence = ""
    words.map do |word|
      translated_sentence += word
    end

    translated_sentence
  end

end
