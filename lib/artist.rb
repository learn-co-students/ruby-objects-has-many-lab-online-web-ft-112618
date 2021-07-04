class Artist 
  
  attr_accessor :name, :songs

  @@artists = []

  def initialize(name)
    @name = name 
    @songs = []
  end
  
   def add_song(song)
     @@artists << song 
     @songs << song
     song.artist = self 
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@artists << song
  end
  
  def self.song_count
    @@artists.count 
  end 
  
end 