# Write a program to implement a simple bank account. 

$initial_balance


def display_app
	puts "Please choose from the options below:
* Balance
* Deposit
* Withdraw
* Exit"
end

def banking_app
	# Your code here.
	$initial_balance = 0
	user_password = "Password"
	
	#prompt the user for their password
	puts "Please provide your password. Password is case sensitive."
	password = gets.chomp
	while password != user_password do
		puts "Wrong password. Please try again or type q to quit."
		password = gets.chomp
		return if password == 'q'
	end
	
	#welcoming message and selection
	puts "Welcome to the banking app. 
Where you trust us with your money but we won't trust you with our pen!"
	puts "What would you like to do today?"
	
	#loop for the app
	app_running = true
	while app_running do
		#display the functions and selection for the app.
		display_app
		customer_action = gets.chomp.downcase
		puts customer_action

		selection = ['balance', 'deposit', 'exit', 'withdraw']
		#validation loop
		while  !selection.include?(customer_action) do
			puts "\e[H\e[2J"
			print "Invalid input. "
			display_app
			customer_action = gets.chomp.downcase
		end

		#updates the balance with a deposit
		if customer_action == 'deposit'
			print "How much would you like to deposit? $"
			deposit = gets.chomp.to_i
			$initial_balance += deposit
			#prints user balance
			puts "\e[H\e[2J"
			puts "You deposited $#{deposit}"
			puts "Your Balance is $#{$initial_balance}"
		elsif customer_action == 'withdraw'
			print "How much would you like to withdraw? $"
			withdraw = gets.chomp.to_i
			if withdraw > $initial_balance
				puts "\e[H\e[2J"
				puts "The withdraw amount exceeds your account balance."
			else
				puts "\e[H\e[2J"
				$initial_balance -= withdraw
				puts "You have withdrawn $#{withdraw}"
				puts "Your Balance is $#{$initial_balance}"
			end
			
		elsif customer_action == 'exit'
			app_running = false
			#abort("Thank you for using our app. See you next time!")
		else
			puts "\e[H\e[2J"
			puts "Your Balance is $#{$initial_balance}"
		end
		
	end
	
end

banking_app
