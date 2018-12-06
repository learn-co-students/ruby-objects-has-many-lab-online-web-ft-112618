require 'pry'
class Artist
  attr_accessor :name, :songs

  @@total_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @@total_songs << song
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist = self
    @@total_songs << new_song
  end


  def self.song_count
    @@total_songs.count
  end
end
