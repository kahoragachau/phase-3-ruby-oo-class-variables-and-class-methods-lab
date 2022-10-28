class Song
    attr_accessor :name, :artist, :genre
    # class variable of artist and genre
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists.push(artist)
        @@genres.push(genre)
        @@count += 1
    end

    # Class Methods 
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    
    def self.count
        @@count
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end