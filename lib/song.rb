class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genrehash = {}
  @@artisthash = {}
  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
      @@genres.each do |x|
       if @@genrehash[x] 
         @@genrehash[x] += 1 
       else 
         @@genrehash[x] = 1
       end 
    end 
    @@genrehash
  end 
  def self.artist_count 
    @@artists.each do |x|
      if @@artisthash[x]
        @@artisthash[x] += 1 
      else 
        @@artisthash[x] = 1 
      end 
    end 
    @@artisthash
  end 
end 