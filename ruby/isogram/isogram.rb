class Isogram
  class << self
    def isogram? words
      mapping = chars_mapping(clean_words(words))
      mapping.count do |char, frequency|
        frequency > 1
      end == 0
    end

    def clean_words words
      words.gsub(/[- ]/,'').downcase()
    end

    def chars_mapping words
      words.chars.each_with_object({}) do |char, mapping|
        mapping[char] = mapping.fetch(char, 0) + 1
      end
    end

  end
end