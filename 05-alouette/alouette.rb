class Alouette
  def initialize
  end

  def self.lines_for_verse(verse_num)
    array = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]
    verse_array = array.slice(0..verse_num)

    return verse_array.reverse
  end

  def self.verse(verse_num)
    first_lines = "Je te plumerai "
    lines_array = Alouette.lines_for_verse(verse_num)
    verse = (first_lines + lines_array.first.slice(3..-2) + ".\n") * 2
    lines_array.each do |line|
      verse += (line + "\n") * 2
    end

    verse += "Alouette!\n" * 2
    verse += "A-a-a-ah"

    return verse
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    song = refrain

    i = 0

    until i == 8
      song += "\n\n" + Alouette.verse(i) + "\n\n" + refrain
      i += 1
    end

    return song
  end
end

puts Alouette.sing
