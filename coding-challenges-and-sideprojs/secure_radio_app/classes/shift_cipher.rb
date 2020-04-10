
class ShiftCipher
    @@LETTERS = [*'a'..'z']
    @@SPECIAL_CHARS = ["'", '"'," ", "?", "!", ".",]

    def self.encode(string, num)
        coded_string = Array.new
        string.downcase.each_char do |char|
            if @@SPECIAL_CHARS.include?(char)
                coded_string << char
            else
                new_char = (@@LETTERS.index(char) + num) % 26
                coded_string << @@LETTERS[new_char]
            end
        end
        coded_string.join('').capitalize
    end

    def self.decode(string, num)
        decoded_string = Array.new
        string.downcase.each_char do |char|
            if @@SPECIAL_CHARS.include?(char)
                decoded_string << char
            else
                new_char = (@@LETTERS.index(char) - num) % 26
                decoded_string << @@LETTERS[new_char]
            end
        end
        decoded_string.join('').capitalize
    end
            


end

# word = ShiftCipher.encode("a traffic report", 3)
# puts word
# word = ShiftCipher.decode(word, 3)
# puts word
