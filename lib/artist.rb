require 'pry'

class Artist 

    attr_accessor :name

    @@all = []

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

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres 
        song_genre = []
        Song.all.each do |song|
            if song.artist == self 
                song_genre << song.genre
            else 
                nil 
            end
        end
        song_genre
    end

end