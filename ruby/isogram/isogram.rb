class Isogram
  class << self
    def isogram? words
      return true if words == ''
      mapping = chars_mapping(clean_words(words))
      mapping.all? do |char, count|
        count == 1
      end
    end

    def clean_words words
      words.gsub(/[- ]/,'').downcase()
    end

    def chars_mapping words
      words.split('').reduce({}) do |mapping, char|
        mapping[char] = mapping.fetch(char, 0) + 1
        mapping
      end
    end

  end
end