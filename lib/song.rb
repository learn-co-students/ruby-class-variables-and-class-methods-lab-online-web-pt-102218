class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name  
    @artist = artist   
    @genre = genre 
    @@genres << genre 
    @@artists << artist 
  end 
  
  def self.count 
    @@count
  end
  
  def self.genres 
    @@genres = @@genres.uniq
  end 
  
  def self.artists
    @@artists = @@artists.uniq 
  end 
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash.has_key?(genre)
        hash[genre] += 1
      else 
        hash[genre] = 1
      end 
    end
    return hash
  end 
  
  def self.artist_count 
    hash = {}
    @@artists.each do |artist|
      if hash.has_key?(artist)
        hash[artist] += 1
      else 
        hash[artist] = 1
      end 
    end
    return hash
  end 
end 