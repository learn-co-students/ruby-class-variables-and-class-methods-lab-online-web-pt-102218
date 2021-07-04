class Song

  attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

   def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

   def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

   def self.genre_count
    genre_counter = {}
     @@genres.each do |genre|
      genre_counter[genre] ||= 0
      genre_counter[genre] += 1
    end
    genre_counter
  end

   def self.artist_count
    artist_counter = {}
     @@artists.each do |artist|
      artist_counter[artist] ||= 0
      artist_counter[artist] += 1
    end
    artist_counter
   end
end
