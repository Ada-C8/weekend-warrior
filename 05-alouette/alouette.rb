# You will write a class, `Alouette`, with three methods, `lines_for_verse`, `verse` and `sing`.

class Alouette

  def lines_for_verse(num)

  verses_hash = {
      1 => ["Et la tête!"],
      2 => ["Et le bec!", "Et la tête!"],
      3 => ["Et les yeux," "Et le bec!", "Et la tête!"],
    }

  end #def lines_for_verse end


  def verse(num)
    if num == 1
    line1 = "Je te plumerai" + "#{Allouette.verse(num)}\n" * 2
      # Et la tête!
      # Et la tête!
      # Alouette!
      # Alouette!
      # A-a-a-ah
      #Maybe make an array of lines, then call the index and multiply?
  end #def verse end

  def sing

  end #def sing end




end #Class end
