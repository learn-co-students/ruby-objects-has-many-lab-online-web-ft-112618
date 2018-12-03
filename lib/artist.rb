

class Artist
  attr_accessor :songs, :name

  @@artists = []

  def initialize(name)
    @songs = []
    @name = name
    @@artists << self
  end

  def add_song(song)
    @songs << song
    @songs[-1].artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@artists.inject(0) {|acc, n| acc + n.songs.size}
  end
end
