class Song
  attr_accessor :title, :artist
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @all
  end

  def self.new_by_filename(song_name)
    song = self.new
    song.title
  end

  def artist_name
    artist.name ? artist.name.self : nil
  end
end
