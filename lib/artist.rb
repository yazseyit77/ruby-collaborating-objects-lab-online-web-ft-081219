class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << song
  end

  def self.all
    @@all
  end

end
