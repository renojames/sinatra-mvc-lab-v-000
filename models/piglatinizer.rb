
class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize
    text_ary = text.split("")
    text_ary = text_ary.rotate(1)
    new_string = text_ary.join + "ay"
    new_string
  end

  def self.hello
    puts "Hello"
  end

end
