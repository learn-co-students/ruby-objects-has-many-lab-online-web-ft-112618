require 'pry'

class Artist
    attr_accessor :name

    #empty song array to store songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    
    def self.all   
        @@all 
    end 

    def songs
        Song.all.select {|song| song.artist == self} 
        
    end 

    
    #takes in an argument of song and associates it with artist by telling song it belongs to artist
    def add_song(song)
        song.artist = self  
    end 

    def add_song_by_name(name)

        song = Song.new(name)

        song.artist = self 
        

    end 

    def self.song_count
        Song.all.count 
    end 
end 