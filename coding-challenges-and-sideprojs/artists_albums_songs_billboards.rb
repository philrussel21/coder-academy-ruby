class Song
	def initialize(title, duration, genre)
		#Your code here
		@title = title
		@duration = duration
		@genre = genre
	end
	
	
end

#Add your Album, Artist and BillboardTop10 classes below
class Album
	attr_accessor :title, :release_date, :songs
	
	def initialize(title, release_date, songs=[])
		@title = title
		@release_date = release_date
		@songs = songs
	end
	
	
	#add songs to the array of songs of the instance
	def add_song=song
		@songs << song
	end
	
	#counts the number of songs that the album instance has
	def number_of_songs
		return @songs.length
	end
	
	#Displays everything the instance has
	def display
		return "The #{@title} album has been released on #{@release_date} and has #{@songs} songs in it"
	end
	
end

class Artist
	attr_accessor :artist, :albums
	
	def initialize(name,albums=[])
		@artist = name
		@albums = albums
	end
	
	#lets the user add an album to the current array of albums
	def add_album=album
		@albums << album
	end
	
	#method to count how many albums an artist has
	def number_of_albums
		@albums.length
	end
	
	def display
		"The #{@artist} band has the following albums: #{@albums}"
	end
	
	
end

class BillboardTop10
	
	attr_accessor :year, :songs
	
	def initialize(year, songs=[])
		@year = year
		@songs = songs
	end
	
	#adds a song to the current array of top 10 songs
	def add_song=song
		@songs << song
		@songs.shift if @songs.length > 10
	end
	
	#shows how many songs there are in a billboard year
	def number_of_songs
		@songs.length
	end
	
	def display
		puts "The top ten songs for the year #{@year} are:"
		@songs.each{|song|puts "*** #{song}"}
	end
	
end



# Create your 3 instances of the Song class here
song1 = Song.new("Thanks for the Memories", 3, 'rock')
song2 = Song.new("I Write Sins not Tragedies", 5, 'rock')
song3 = Song.new("Piece of Your Heart", 4, 'edm')

# Instances of Album Class
album1 = Album.new("Broken but Easily Fixed", 2006, ['Smashed into Pieces', 'Giving up', 'November'])
album2 = Album.new("Discovering the Waterfront", 2005, ['Ides of March','Smile in your Sleep','Discovering the Waterfront'])
album3 = Album.new("A Shipwreck in the Sand", 2009, ['Vices', 'A Shipwreck in the Sand','The End'])
album3.add_song = 'qwerty'
puts album3.display
puts album3.number_of_songs

# Instances of Artist Class
artist1 = Artist.new('Fallout Boys',['Mania', 'Save Rock and Roll','American Beauty'])
artist2 = Artist.new('Silverstein', ['Broken but Easily Fixed','Discovering the Waterfront','A Shipwreck in the Sand'])
artist2.add_album = 'My Heroine'
puts artist2.display
puts artist2.number_of_albums

# Instance of BillboardTop10 Class
billboard1 = BillboardTop10.new('2019', ['Old Town Road','Bad Guy','Senorita','Blinding Lights','Don\'t Start Now','Memories','Sucker','The Box','Say So','I Don\'t Care'])
billboard1.add_song= "Yummy"
billboard1.display
puts billboard1.number_of_songs
