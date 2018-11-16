class Song
    @@songs
    @@count=0
    @@artists=[]
    @@genres=[]
    @@songs=[]
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        if !@@songs.include?({:name=>name,:artist=>artist,:genre=>genre})
            @@songs.push({:name=>name,:artist=>artist,:genre=>genre})
        end
        @@count+=1
        @@artists.push(artist).uniq
        @@genres.push(genre).uniq
    end
    def self.count
        @@songs.length
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        out ={}
        self.genres.each{|genre|
        #puts genre
        out[genre]=@@songs.select{ |x|
            x[:genre]==genre
    }.length
        }
        out
    end
    def self.artist_count
        out ={}
        self.artists.each{|genre|
        #puts genre
        out[genre]=@@songs.select{ |x|
            x[:artist]==genre
    }.length
        }
        out
    end

    attr_accessor :name, :artist, :genre
end