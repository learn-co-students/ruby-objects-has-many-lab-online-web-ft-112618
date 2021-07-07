class Song 
  attr_accessor :name, :artist, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name if artist
  end
  
end
  
