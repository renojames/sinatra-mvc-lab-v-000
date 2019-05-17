
class PigLatinizer

  def starts_with_vowel?(text)
    text.downcase.start_with?("a", "e", "i", "o", "u")
  end

  def is_uppercase?(ary)
    ary[0].upcase == ary[0]
  end

  def first_two_consonants?(text)
    text = text.downcase
    text_ary = text.split("")
    consonants = ("a".."z").to_a - ["a", "e", "i", "o", "u"]
    consonants.include?(text_ary[0]) && consonants.include?(text_ary[1])
  end

#["H", "e", "l", "l", "o"]

#["P", "r", "e", "s", "i", "d", "e", "n", "t"]

  def piglatinize(text)
    if starts_with_vowel?(text)
      text_ary = text.split("")
      if is_uppercase?(text_ary)
        text_ary[0] = text_ary[0].downcase
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join.capitalize + "way"
        new_string
      else
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join + "way"
        new_string
      end
    elsif first_two_consonants?(text)

    else
      text_ary = text.split("")
      if is_uppercase?(text_ary)
        text_ary[0] = text_ary[0].downcase
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join.capitalize + "ay"
        new_string
      else
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join + "ay"
        new_string
      end
    end

  end

end
