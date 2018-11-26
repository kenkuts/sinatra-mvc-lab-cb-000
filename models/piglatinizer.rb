class PigLatinizer
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def piglatinize(word)
    letters = word.split("")
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
