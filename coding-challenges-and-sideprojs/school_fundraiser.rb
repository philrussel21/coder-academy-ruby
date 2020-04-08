school_fundraiser = {:cookies => { :chocolate => 4, :plain => 3, :ginger => 4},
                    :pot_plants => { :ficus => 10, :basil => 5, :money_tree => 13},
                    :donations => { :ten => 10, :twenty => 20, :fifty => 50}}

purchased = ["ficus", "money_tree", "chocolate", "chocolate", "chocolate"]

#Adds to the existing school_fundraiser hash
school_fundraiser.merge!(:juice_stand => {:lemonade => 3})

#updates the price of the money tree to be only 75% of $13
school_fundraiser[:pot_plants][:money_tree] = school_fundraiser[:pot_plants][:money_tree] * 0.75

#puts school_fundraiser

def extra_cookies(purchased, school_fundraiser)
     #counter for total spending
     purchase_cost = 0
     
     #iterate through every item in the array purchased
     purchased.each do |item|
          #converts the string from the array to a symbol
          item_sym = item.to_sym
          
          #iterate through every item in the hash
          school_fundraiser.each_key do |k|
               #conditional to sort out which key has the item nested to it
               if school_fundraiser[k].include?(item_sym)
                    #extract the value from the nested hash then sum up in the counter
                    purchase_cost += school_fundraiser[k][item_sym]
               end
          end
     end
     
     puts purchase_cost

end

purchased = ['ficus', 'money_tree', 'chocolate', 'chocolate', 'chocolate', 'lemonade']

extra_cookies(purchased, school_fundraiser)
