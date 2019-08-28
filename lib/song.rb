class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def self.new_by_filename(song_name)

  end

  def artist_name
    artist.name ? artist.name.self : nil
  end
end
