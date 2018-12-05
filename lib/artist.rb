class Artist
  attr_accessor :songs
  attr_reader :name
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end
    
  def add_song_by_name(name)
    self.add_song(Song.new(name))
  end

  def self.all
    @@artists
  end

  def self.song_count
    self.all.reduce(0) { |count, artist| count + artist.songs.length }
  end
end
