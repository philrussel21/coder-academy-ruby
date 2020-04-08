#! usr/bin/env ruby

VOWELS = ['a','e','i','o','u']

# def pig_latin(word)
	
# 	word_arr = word.downcase.split('')
	
# 	#iterate for each vowel
# 	VOWELS.each do |v|
# 		#if the words starts with a vowel, returns the transformed message
# 		if word_arr.index(v) == 0
# 			return (word_arr << 'ay').join('').capitalize
			
# 		#finds the first instance of the vowel then returns the transformed message
# 		elsif word_arr.index(v) != nil
# 			vowel_pos = word_arr.index(v)
# 			move = word_arr.slice!(0..(vowel_pos-1)) << 'ay'
# 			return (word_arr << move).join('').capitalize
# 		end
# 	end
	
	
# end

def pig_latin(word="")
	word_arr = word.downcase.split('')
	
	word_arr.each do |letter|
		if VOWELS.include?(letter)
			if word_arr.index(letter) == 0
				return (word_arr << 'ay').join('').capitalize
				
			else 
				vowel_position = word_arr.index(letter)
				moved_letters = word_arr.slice!(0..vowel_position-1) << 'ay'
				return (word_arr << moved_letters).join('').capitalize
			end
		end
	end	
end





puts pig_latin()

	#words beginning with one consonant, the consonant
	#moves to the end, followed by 'ay' ie. pig = igpay
	
	#words beginning with vowel sounds, just add 'ay' to the end
	#ie elevator = elevatoray
	
	#words beginning with a consonant cluster, the whole cluster
	#moves to the end, followed by 'ay' ie. glove = oveglay
