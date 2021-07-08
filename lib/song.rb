class Song
  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name ="", genre ="")
    @name = name
    @genre = genre
    instance = self
    @@all << instance
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      @artist.name
    end
  end

end
