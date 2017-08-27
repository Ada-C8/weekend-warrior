class Hamming
  attr_reader :strand

  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
  end

  def compute  #compare the two strands
    equal_length = false
    if @strand1.length == @strand2.length
      equal_length = true
    else
      raise ArgumentError.new("Strands must be equal in length in order to compare")
    end

    strand1_arr = @strand1.split
    strand2_arr = @strand2.split

    distance = 0
    i = 0
    n = 0
    strand1_arr.times do
      if strand1_arr[n] != strand2_arr[i]
        distance += 1
      end
      i += 1
      n += 1
    end

    return distance

  end

end

hamming = Hamming.new("AAAA", "ABAB")
puts hamming
puts hamming.compute
