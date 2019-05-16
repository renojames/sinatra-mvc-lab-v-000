
class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize
    text_ary = text.split.rotate(1)
    new_text = text_ary.join + "ay"
    new_text
  end

  def self.hello
    puts "Hello"
  end

end
