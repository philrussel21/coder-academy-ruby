$wish_list = Array.new

def input_wish(wish)
	$wish_list << wish
end

def show_wish(wish_list=[])
	puts "Santa's List"
	wish_list.each {|wish| puts "*** #{wish}"}
end

def main
	app_running = true

	while app_running
		print "What would you like to wish from Santa? "
		wish = gets.chomp
		input_wish(wish)
		print "Would you like to make another wish? "
		response = gets.chomp.downcase
		response[0] == 'y' ? app_running = true : app_running = false
	end
	show_wish($wish_list)
end

main
