class Phrase
  def initialize string
    @string = string
  end

  def word_count
    string_arr = @string.split(/'*[^\w']+'*/)
    string_arr.reduce({}) do |acc, word|
      word.downcase!
      acc[word] = acc.fetch(word, 0) + 1
      acc
    end
  end
end