def spin_words (words)
    # your code goes here
    # return if words.length < 5
    # words.chars.shuffle!.join('')
    if words.include?(" ")
      words = words.split(" ")
      words.map! do |word|
        if word.length >= 5
          word = word.chars.reverse!.join
        else
          word
        end
      end
      words.join(" ")
    else
      words.length <= 5 ? words : words.chars.reverse.join
    end
end

puts spin_words("Hey fellow warriors")
puts spin_words( "This is a test")