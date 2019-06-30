class Song

#this is so that other classes can also read this data
attr_accessor :artist, :name

@@all = []

# @@all will keeo track of all songs ever created

# everytime a song is initialized, we want to give it its name, and send this to the Song class variable. 
    def initialize(name)
        @name = name
        @@all << self
    end

# Gives the user the ability to display all songs ever created
    def self.all
        @@all
    end 

# For each song, we have the function to call on the artists name, which is set in the artist class
    def artist_name 
        if self.artist == nil
            nil
        else
            self.artist.name
        end 
    end 

    def song_name
        @@all.name
    end 

end 