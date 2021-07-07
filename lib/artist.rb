require 'pry'

class Artist
attr_accessor :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def add_song(name)
    name.artist = self
  end


  def self.song_count#access list of artists and return total song count across all artists
    Song.all.length
    # new_hash = { }
    #binding.pry
    #@@artists.count
    #@songs.count
    #   new_hash[s] ? new_hash[s] += 1 : new_hash[s] = 1
    #end
    #   new_hash.count
  end

end
