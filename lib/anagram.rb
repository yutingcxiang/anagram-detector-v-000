class Anagram
  attr_accessor :word
  @@matches = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    letters = @word.split("")
    letters_sorted = letters.sort
    array.map do |item|
      item_letters = item.split("")
      item_letters_sorted = item_letters.sort
      if item_letters_sorted == letters_sorted
        @@matches << item
      end
    end
    @@matches
  end
end