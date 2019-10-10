require 'pry'

class Song

    attr_accessor :name, :artist  

    @@all = []

    #new initialized and pushes new instances into a class variable called @@all
    def initialize(name)
        @name = name 
        @@all << self   
    end 

    #returns an array of all song instances that have been created
    def self.all 
        @@all 
    end 

    def artist_name
        
        artist.name if artist 
                
    end 
end 
