class Complement
  @@transcript = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U",
  }

  def self.of_dna(dna_sequence)
    return "" if dna_sequence.index(/[^ATGC]/)
    dna_sequence.gsub(/[ATGC]/, @@transcript)
  end
end

module BookKeeping
  VERSION = 4
end