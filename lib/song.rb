class Song 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genre_hash = {}
  @@artist_hash = {}
  
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
    
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
      @@genres.each do |i|
       if @@genre_hash[i] 
         @@genre_hash[i] += 1 
       else 
         @@genre_hash[i] = 1
       end 
    end 
    @@genre_hash
  end 
  
  
  def self.artist_count 
    @@artists.each do |e|
      if @@artist_hash[e]
        @@artist_hash[e] += 1 
      else 
        @@artist_hash[e] = 1 
      end 
    end 
    @@artist_hash
  end 
end 


