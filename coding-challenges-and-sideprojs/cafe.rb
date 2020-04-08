

def print_options
    # write the code to print the menu options for the customer to choose from.
    #Cafe Name and banner
    print " " * 5
    puts "-" * 8
    print " " * 5
    puts "|Cafe 21|"
    print " " * 5
    puts "-" * 8
    
    puts "What can I get you for today?"
        
puts "   Beverage                    Others
*** Latte ($4)            *** Scone ($5)
*** Capuccino ($4)        *** Cupcake ($5)
*** Long Black ($4)       *** Bagels ($3)
*** Flat White ($4)       *** Toast ($3)
*** Tea ($3)              *** Sandwich ($8)
*** Water ($2)            *** Cake ($10)"
    puts ""
    puts ""
        
end

def print_order(order_hash)
	# write the code to print the order to show the 		customer what he/ she has ordered and how much of 		each.
    puts "Please see below for your order:"
    calculate_total_bill(order_hash)
end

def get_order
    # Hint : create a new hash here called order_hash to which you can add the quantities as and when the user inputs them.
    # this method returns the order_hash which is the argument to the calculate_total_bill method.
    menu = {latte: 4, capuccino: 4, long_black: 4, flat_white: 4, tea: 3, water: 2, scone: 5, cupcake: 5, bagels: 3, toast: 3, sandwich: 8, cake: 10}
    
    order_hash = Hash.new
    
    response = 'y'
    
    while response == 'y' || response == 'yes'
    print_options
    order = gets.chomp.downcase.to_sym
    if order.to_s.include?(' ')
        order = order.to_s.split(' ').join('_').to_sym
    end

    order_hash.has_key?(order) ? order_hash[order] += menu[order] : order_hash[order] = menu[order]
    
    print "Would you like to add some more? "
    response = gets.chomp.downcase
        
    end
    return order_hash
    
end

#calculates the total bill
def calculate_total_bill(order_hash)
    order_hash.each do |k,v|
        puts "#{k}: $#{v}"
    end
    return order_hash.values.inject{|sum,cost| sum + cost}
end

#chains all the functions together then prints off the final bill
def main
    puts "Here is your total bill : #{calculate_total_bill(get_order)}"
end


main
