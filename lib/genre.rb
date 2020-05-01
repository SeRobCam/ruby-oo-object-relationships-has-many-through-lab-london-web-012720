class Genre 

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
        Song.all.select { |song| song.genre == self}
    end

    def artists
        song_artist = []
        Song.all.each do |song|
            if song.genre == self 
                song_artist << song.artist
            else 
                nil 
            end
        end
        song_artist
    end




end