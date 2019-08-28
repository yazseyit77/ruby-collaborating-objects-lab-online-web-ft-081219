class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    songs = []
  end

  def add_song(name)

  end

  def self.all
    @@all
  end

end
