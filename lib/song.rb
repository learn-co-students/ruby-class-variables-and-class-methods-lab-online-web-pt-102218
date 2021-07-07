class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  # keeps track of new songs created 
  @@genres= []
  @@artists= []
 
  def initialize(name, artist, genre)
    @@count += 1 
    @name = name 
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end 
  
  def self.count 
    @@count 
  end 
  
  
  def self.genres
    @@genres.uniq!
  end 
  
  def self.artists
    @@artists.uniq!
  end 
  
  def self.genre_count 
      genre_hash = {}
      @@genres.each do |genre|
        genre_hash[genre] = 0  if !genre_hash.include?(genre)
        genre_hash[genre] +=1 
      end 
    genre_hash
  end 
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] = 0 if !artist_hash.include?(artist) 
      artist_hash[artist] +=1
    end 
    artist_hash
  end 
  
end 


