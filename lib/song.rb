class Song 
  @@count = 0
  
  def self.count 
    @@count
  end 
  
  @@genres = []
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  @@artists = []
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  attr_accessor :name, :artist, :genre
end 

the_day = Song.new("The Day", "John Smith", "classic")
tomorow = Song.new("Tomorow", "John Smith", "classic")
a_yearz = Song.new("A Yearz", "Adam Johns", "oldtime")
a_rabess = Song.new("Arabess", "Habibi Watan", "Rai")
cus_umak = Song.new("Cus Ummach", "Haifa Wehbe", "Rai")

puts the_day.name
puts the_day.artist
puts the_day.genre
puts Song.count
Song.genres
Song.artists
Song.genre_count
Song.artist_count