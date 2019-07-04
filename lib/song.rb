class Song
    # so other classes can read this data in this class  
    attr_accessor :artist, :name 

@@all = []

# @@all keeps track of all the songs ever created 

# each time a song is initialized it will take in a name as an arguemnet and then also get added to the class variable @@all to be kept in "all songs array" 
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    # gives the user the ability to call songs.self and return all the songs created
    def self.all
        @@all
    end 

    # option of calling .artist on each song that was set in the artist class 
    def artist_name
        if self.artist == nil 
            nil 
        else self.artist.name 
    end 
end 
end 