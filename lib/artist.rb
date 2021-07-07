class Artist
    attr_accessor :name, :songs

    # Creates new artist instance with @name & @songs attributes.
    # Increments the total_songs class variable by 1.
    def initialize(name)
        @name = name
        @songs = []
    end

    # Adds song to instance variable @songs.
    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        @songs << song
        song.artist = self
    end

    # .count is a new key method for me. 
    def self.song_count
        Song.all.count
    end
end
