class Artist

    attr_accessor :name, :songs

# Every artist is initialised with a name and they each have a list of songs. By default they start with a nil array. 
    def initialize(name)
        @name = name
        @songs = []
    end 

  #manually adding the song to an artists list, and associating the song to the particular artist, using "self"  
  #adding an instance of a song
    def add_song(song)
        @songs << song
        song.artist = self #calling the artist method(which sits in the Song class and writing itselfs artist as the artist
    end 


# Shortcut version to initialize a new song and associate it to the artist at the same time
    def add_song_by_name(name)
        song = Song.new(name)
        @songs << song
        song.artist = self
    end  

    def self.song_count
        song_string = []
        Song.all.each do |song|
            song_string << song.name
        end 
        return song_string.count
    end 
end 