class Song
  attr_accessor :name, :song, :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    # @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    # artist.name = self
    if artist == nil
        return nil
    else artist.name
    end
    # @artist << artist
  end
end
