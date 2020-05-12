def alphabet_position(text)
    # Your code here
    letters = [*"a".."z"]
    pos = Array.new
    text.downcase.chars.each do |let| 
      if letters.include?(let)
        pos << letters.index(let) + 1
      end
    end
    pos.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.")