# Your code here
#empty string
my_var = ''

#convert 5 to a string
my_var = 5.to_s

#convert user given Celsius to Fahrenheit
print "Please provide the Temperature in Celsius to be converted: "
temp = gets.chomp.to_i

puts "The temperature provided is equal to #{temp * 9 / 5 + 32} Fahrenheit"

# #raining and temperature
print "Is it raining outside? "
ans = gets.chomp.downcase
raining = true ? ans == 'yes' : raining = false

print "What is the temperature? "
temperature = gets.chomp.to_i
while temperature == 0
	print "Please provide a valid temperature: "
	temperature = gets.chomp.to_i
end

case
	when raining && temperature < 15
		puts "It's wet and cold."
	when !raining && temperature < 15
		puts "It's not raining but cold."
	when raining && temperature > 15
		puts "It's warm but raining."
else
	puts "It's warm and not raining."
end

# Leap year
print "Please provide a year: "
year = gets.chomp.to_i

if year % 100 == 0 && year % 400 != 0
	puts "#{year} is  NOT a Leap Year!"
elsif year % 4 == 0
			puts "#{year} is a Leap Year!"
else
	
	puts "#{year} is NOT a Leap Year!"
end

