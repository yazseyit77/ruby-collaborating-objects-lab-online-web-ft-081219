class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end
  def find_or_create_by_name(name)
    
  end
end
