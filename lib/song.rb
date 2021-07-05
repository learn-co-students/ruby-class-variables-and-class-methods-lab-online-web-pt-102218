class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist,genre)
    @@count += 1
    @name = name
    @genre = genre
    @artist = artist
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
    genre_counter = {}
    @@genres.each do |genre|
      genre_counter[genre] ||= 0
      genre_counter[genre] += 1
    end
    return genre_counter
  end

  def self.artist_count
    artist_counter = {}
    @@artists.each do |artist|
      artist_counter[artist] ||=0
      artist_counter[artist] +=1
    end
    return artist_counter
  end
end
