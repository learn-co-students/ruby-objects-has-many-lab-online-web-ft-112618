class Artist
  attr_accessor :name

  @@totalSongs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@totalSongs << song
  end

  def add_song_by_name(name ="", genre ="")
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
    @@totalSongs << song
  end

  def self.song_count
    @@totalSongs.length
  end


end
