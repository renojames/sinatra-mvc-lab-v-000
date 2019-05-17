
class PigLatinizer

  def starts_with_vowel?(text)
    text.start_with("a", "e", "i", "o", "u")
  end

  def piglatinize(text)
    text_ary = text.split("")
    text_ary = text_ary.rotate(1)
    new_string = text_ary.join + "ay"
    new_string
  end

end
