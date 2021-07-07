class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @@all << song
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
    @@all << new_song
  end
  
  def self.song_count
    @@all.count
  end
  puts= "testing again"
end