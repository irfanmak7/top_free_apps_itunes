class App

    attr_accessor :title, :url, :developer, :category, :rating, :language, :size
    @@all = []

    def initialize(title, url)
        @title = title
        @url = url
        @@all << self
    end

    def self.all
        @@all
    end

end