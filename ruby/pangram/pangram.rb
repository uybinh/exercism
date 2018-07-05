class Pangram

  def self.pangram? phase
    ('a'..'z').all? { |char| phase.downcase.include? char }
  end

end

module BookKeeping
  VERSION = 6
end