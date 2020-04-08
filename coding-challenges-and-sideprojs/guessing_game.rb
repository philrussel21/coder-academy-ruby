#! usr/bin/env ruby

puts "	  -------------------
	 | Let's play a game!|
	  -------------------"
puts "What is your name? "
name = gets.chomp
puts "Hello, #{name}.
We are going to play a guessing game.
I will choose a random number between 1 and 10
and you will try and guess it but
REMEMBER: you only have 3 chances to guess it.
Would you like to play?
Y or N"
ans = gets.chomp.upcase

until ans == 'Y' || ans == 'N'
	puts "Invalid answer, please try again.\nWould you like to play?\nY or N"
	ans = gets.chomp.upcase
end

unless ans == "Y"
	abort("See you later party pooper!")
end

puts "I have my number. Try and guess it now"
random_num = rand(10)

3.times do |i|
	user_ans = gets.chomp.to_i
	if user_ans == random_num
		abort('Congratulations! You won pride and glory!')
	else
		if user_ans > random_num
			clue = 'lower'
		else
			clue = 'higher'
		end
		puts "Wrong answer, try #{clue}\nYou have #{2 - i} chances left"
	end
end
puts "Thank you for playing, better luck next time champ!"
