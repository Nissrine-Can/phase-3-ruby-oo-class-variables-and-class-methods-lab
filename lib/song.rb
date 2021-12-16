require 'pry'

class Song

    @@count = 0

   attr_accessor :name, :artist, :genre
     
        @@genres = []
        @@artists =[]
        @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
        
     end

     def self.count
        @@count
     end

     def self.genres
        @@genres.uniq 
     end
    
     def self.artists 
        @@artists.uniq
     end

     def self.genre_count 
        @@genres.tally
     end

    def self.artist_count
        @@artists.tally
    end

end
