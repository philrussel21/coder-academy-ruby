#! usr/bin/env ruby

require 'faker'
require 'colorize'

print "Please provide your name: "
name = gets.chomp
puts "Good day, #{name.colorize(:yellow)}!"
print "Would you like a fun fact about Chuck Norris? "

def play?
    response = gets.chomp.downcase
    response == 'y' || response == 'yes' ? playing = true : playing = false
    playing
end

playing = play?
while playing
    puts ""
    puts Faker::ChuckNorris.fact.colorize(:red).on_yellow
    puts ""
    print "Fascinating".colorize(:light_blue)
    print " isn't it? Would you like another one? "
    playing = play?
end

print "Hope you learned some facts about "
puts "Chuck Norris!".colorize(:red)
