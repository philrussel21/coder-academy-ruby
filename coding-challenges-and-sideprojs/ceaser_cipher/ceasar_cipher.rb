class CaesarCipher
  def initialize(shift)
    # your code here
    @shift = shift
    @letters = [*"a".."z"]
    @cap_letters = [*"A".."Z"]
  end

  def encode(string)
    # your code here
    encoded_str = string.chars.map do |char|
      if @letters.include?(char)
        # char = @letters[(@letters.index(char) + @shift) % 26]
        char = @letters[(@letters.index(char) + @shift) % 26]
      elsif @cap_letters.include?(char)
        char = @cap_letters[(@cap_letters.index(char) + @shift) % 26]
      else
        char
      end
    end
    encoded_str.join
  end
  
  def decode(string)
    # your code here
    decoded_str = string.chars.map do |char|
      if @letters.include?(char)
        @letters[(@letters.index(char) - @shift) % 26]
      elsif @cap_letters.include?(char)
        @cap_letters[(@cap_letters.index(char) - @shift) % 26]
      else
        char
      end
    end
    decoded_str.join
  end
end