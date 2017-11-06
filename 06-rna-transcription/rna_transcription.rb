class Complement

  def self.of_dna(string)
    if !string.match?(/^[CGTA]+$/)
      raise ArgumentError
    else
      string.gsub!(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
      return string
    end
  end

  def self.of_rna(string)
    if !string.match?(/^[CGAU]+$/)
      raise ArgumentError
    else
      string.gsub!(/[CGAU]/, 'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A')

      return string
    end
  end

end
