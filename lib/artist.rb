class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist.self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name=(name)
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = (name)
    end
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end
end
