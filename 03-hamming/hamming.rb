class Hamming
  attr_reader :strand

  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
  end

  def compute  #compare the two strands
    length = nil
    if @strand1.length == @strand2.length
      equal_length = @strand1.length
    else
      raise ArgumentError.new("Strands must be equal in length in order to compare")
    end

    strand1_arr = @strand1.split("")
    strand2_arr = @strand2.split("")

    @distance = 0
    i = 0

    strand1_arr.each do |value|
      if value != strand2_arr[i]
        @distance += 1
      end
        i += 1
    end

    puts @distance

  end

end

hamming = Hamming.new("AAAACA", "ABABCB")
puts hamming
puts hamming.compute
