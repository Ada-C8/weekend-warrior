require 'pry'

def words(sentence)

  sentence = sentence.split(" ")

  word_count_hash = {}
  sentence.each do |word|

    if word_count_hash.include?(word)
      word_count_hash[word] += 1
    else
      word_count_hash[word] = 1
    end

  end

  return word_count_hash
end
