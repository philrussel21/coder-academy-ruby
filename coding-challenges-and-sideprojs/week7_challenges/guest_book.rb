require "date"


# sort by name too


class Guestbook
	# store a record of all visits as a Class/self variable
	@@allVisits = Hash.new
	# create Class/self methods to add new visits to the Guestbook
	def self.AddVisit(hash)
	  @@allVisits.store(hash[:name], hash)
	end

	def self.allVisits
	  @@allVisits
	end

    def self.sortbyDate
      dates = Array.new
    #   @@allVisits.each do |k,v|
    #     dates << @@allVisits[k][:date]
    #   end
    #   dates.sort!.uniq.each do |d|
    #     @@allVisits.length.times do |i|
    #         if @@allVisits.values[i][:date] == d
    #             puts "name: #{@@allVisits.values[i][:name]}\ndate: #{@@allVisits.values[i][:date]}\nmessage: #{@@allVisits.values[i][:message]}\n\n"
    #         end
    #     end
    #   end
    #   self
      sort(dates,:date)
	end

    private
    
    def self.sort(arr,sym)
        @@allVisits.each do |k,v|
            arr << @@allVisits[k][sym]
        end
        arr.sort!.uniq.each do |d|
            @@allVisits.length.times do |i|
                if @@allVisits.values[i][sym] == d
                    puts "name: #{@@allVisits.values[i][:name]}\ndate: #{@@allVisits.values[i][:date]}\nmessage: #{@@allVisits.values[i][:message]}\n\n"
                end
            end
        end
    end
	
end


Guestbook.AddVisit({name:"Pam Beasley", date: DateTime.now.to_s.slice(0,10), message:"The architecture reminds one of a quaint Tuscan beet farm, and the natural aroma of the beets drifts into the bedrooms and makes you dream of simpler times."})
Guestbook.AddVisit({name:"Jim Halpert", date: DateTime.now.to_s.slice(0,10), message:"The informative lecture will satisfy all your beet curiosity, and the dawn goose walk will tug at your heart strings."})


puts Guestbook.sortbyDate

