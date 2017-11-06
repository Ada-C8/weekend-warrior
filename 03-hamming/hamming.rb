class Hamming
  attr_reader :strand

  def initialize
    @strand = strand

  end

  def self.compute(strand1, strand2)  #compare the two strands
    length = nil
    if strand1.length == strand2.length
      length = strand1.length
    else
      raise ArgumentError.new("Strands must be equal in length in order to compare")
    end

    strand1_arr = strand1.upcase.split("")
    strand2_arr = strand2.upcase.split("")

    distance = 0
    i = 0

    strand1_arr.each do |value|
      if value != strand2_arr[i]
        distance += 1
      end
        i += 1
    end

    return distance

  end

end
#
#puts Hamming.compute("aba", "bca")
