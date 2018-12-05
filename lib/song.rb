class Song
  attr_accessor :artist
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @name = title
    self.class.all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end
