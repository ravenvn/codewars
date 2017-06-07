def duplicate_encode(word)
  words = word.downcase.chars
  words.map{|e| words.count(e) > 1 ? ')' : '('}.join
end

puts duplicate_encode("recede")
puts duplicate_encode("Success")
puts duplicate_encode("(( @")
