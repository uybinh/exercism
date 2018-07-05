class Hamming

  def self.compute(dna_a, dna_b)
    raise ArgumentError unless same_length?(dna_a, dna_b)
    return 0 if (dna_a == dna_b)
    count_different_pairs(dna_a, dna_b)
  end

  def self.same_length?(a, b)
    a.length == b.length
  end

  def self.count_different_pairs(a,b)
    to_comparison_pairs(a,b).count {|pair| pair[0] != pair[1]}
  end

  def self.to_comparison_pairs(a, b)
    a.chars.zip(b.chars)
  end

  private_class_method :same_length?, :count_different_pairs, :to_comparison_pairs

end

module BookKeeping
  VERSION = 3
end