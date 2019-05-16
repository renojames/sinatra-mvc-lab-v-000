
class PigLatinizer

  def piglatinize(text)
    text_ary = text.split("")
    text_ary = text_ary.rotate(1)
    new_string = text_ary.join + "way"
    new_string
  end

  def self.hello
    puts "Hello"
  end

end
