#done

# The names are comprised of two uppercase letters and a three digit number.
#name = "#{('A'..'Z').to_a.shuffle[0..1].join}#{(3.times.map { rand(0..9) }.join.to_s)}"

class Robot
  attr_reader :name

  def initialize
    rand_name = "#{('A'..'Z').to_a.shuffle[0..1].join}#{(3.times.map { rand(0..9) }.join.to_s)}"
    name = rand_name
    @name = name
  end

  def reset
    rand_name = "#{('A'..'Z').to_a.shuffle[0..1].join}#{(3.times.map { rand(0..9) }.join.to_s)}"
    until rand_name != name
      rand_name = "#{('A'..'Z').to_a.shuffle[0..1].join}#{(3.times.map { rand(0..9) }.join.to_s)}"
    end
    name2 = rand_name
    @name = name2
    return @name
  end
end

jack = Robot.new

puts jack.name
puts jack.name

puts jack.reset
puts jack
