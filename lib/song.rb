require "pry"


class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count +=1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres = Hash.new
    @@genres.each do |item|
      if genres[item] == nil
        genres[item] = 1
      elsif genres[item] == genres[item]
        genres[item] += 1
      end
    end
    return genres
  end

def self.artist_count
  artists = Hash.new
    @@artists.each do |name|
      if artists[name] == nil
        artists[name] = 1
      elsif artists[name] == artists[name]
        artists[name] +=1
      end
    end
  return artists
end


end
