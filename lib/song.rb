require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = @@genres
    @@artist_count = @@artists


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += +1
        @@genres << @genre
        @@artists << @artist
        @@genre_count = @@genres
        @@artist_count = @@artists
    end

    def self.genre_count
        @@genre_count.tally
    end

    def self.artist_count
        @@artist_count.tally
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

end
song1 = Song.new("Fly on", "Wu", "Trapp")
song2 = Song.new("Why", "LA", "Groove")
song3 = Song.new("Who", "LA", "Groove")
binding.pry
0

# ruby lib/song.rb