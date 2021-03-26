class Show 
  attr_accessor :name, :genres, :language, :rating
  @@all = []
    def initialize(name, genres, language, rating)
        @name = name 
        @genres = genres
        @language = language
        @rating = rating
        save 
    end

    def save 
        @@all << self
    end

    def self.all 
        @@all
    end

end