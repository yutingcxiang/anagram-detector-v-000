class Anagram
  attr_accessor :word
  @@matches
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    letters = @word.split("")
    letters_sorted = letters.sort
    array_words.each do |item|
      item_letters = item.split("")
      item_letters_sorted = item_letters.sort
      if item_letters_sorted == letters_sorted
        @@mathces << item
    end
  end
end