#! usr/bin/env ruby
vowels = ['a','e','i','o','u']
word_library = ['noun','place or state', 'verb', 'noun', 'noun', 'name', 'verb', 'noun', 'verb', 'noun', 'part of the body']

word_library.map! do |piece|
	article = vowels.include?(piece[0]) ? 'an' : 'a'
	print "Give me #{article} #{piece}: "
	gets.chomp
end


# # noun
# print "Give me a noun: "
# # word_library.push(gets.chomp)
# word_library << gets.chomp

# # country
# print "Give me a country or a state: "
# word_library << gets.chomp

# # # verb
# print "Give me a verb: "
# word_library << gets.chomp

# # # noun
# print "Give me another noun:"
# word_library << gets.chomp

# # # noun
# print "Give me another noun: "
# word_library << gets.chomp

# # # name
# print "Give me a name: "
# word_library << gets.chomp

# # # verb
# print "Give me another verb: "
# word_library << gets.chomp

# # # noun
# print "Give me another noun: "
# word_library << gets.chomp

# # # verb
# print "Give me another verb: "
# word_library << gets.chomp

# # # noun
# print "Give me another noun: "
# word_library << gets.chomp

# # # part of the body
# print "Give me a weird or a funny part of the body: "
# word_library << gets.chomp

# #Result
puts ""
puts "A #{word_library[0]} in #{word_library[1]} was arrested this morning after he #{word_library[2]} a #{word_library[3]} in front of #{word_library[4]}. #{word_library[5]} had a history of #{word_library[6]} but no one - not even his #{word_library[7]} ever imagined he'd #{word_library[8]} with a #{word_library[9]} stuck in his #{word_library[10]}."

