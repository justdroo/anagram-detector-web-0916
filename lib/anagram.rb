class Anagram
  def initialize(original_word)
    @anagram_key = original_word.chars.sort
  end

  def match(word_list)
    word_list.each_with_object([]) do |word, matches|
      matches << word if word.chars.sort == @anagram_key
    end
  end
end
