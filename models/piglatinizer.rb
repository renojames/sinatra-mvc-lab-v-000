
class PigLatinizer

  def starts_with_vowel?(text)
    text.downcase.start_with?("a", "e", "i", "o", "u")
  end

  def is_uppercase?(ary)
    ary[0].upcase == ary[0]
  end

#["H", "e", "l", "l", "o"]

  def piglatinize(text)
    if starts_with_vowel?(text)
      text_ary = text.downcase.split("")
      if is_uppercase?(text_ary)
        text_ary = text_ary.rotate(1)
        new_string = text_ary.join.capitalize + "way"
        new_string
      else
        text_ary = text_ary.rotate(1)
        binding.pry
        new_string = text_ary.join.capitalize + "way"
        new_string
      end
    else
      text_ary = text.downcase.split("")
      if is_uppercase?(text_ary)
        text_ary = text_ary.rotate(1)
        text_ary[0].upcase
        new_string = text_ary.join.capitalize + "ay"
        new_string
      else
        text_ary = text_ary.rotate(1)
        text_ary[0].upcase
        new_string = text_ary.join + "ay"
        new_string
      end
    end

  end

end
