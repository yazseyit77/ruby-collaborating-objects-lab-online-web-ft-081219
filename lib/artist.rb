class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def find_or_create_by_name(name)

  end

  def self.find(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
end
