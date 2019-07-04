class Artist
    attr_accessor :name, :songs

   
#each artist has a name and a list of songs in an array upon initialization
    def initialize(name)
        @name = name
        @songs = []
    end


    def add_song(song)
        @songs << song
        song.artist = self
    end

    # simultaneously linking artist with the song while initializing the song 
    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song 
        song.artist = self 
    end 

    def self.song_count
        Song.all.count 
    end 
end 