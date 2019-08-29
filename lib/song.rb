class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    gen = {}
    @@genres.each do |genre|
      gen[genre] = self.@@genres.uniq.count
    end
    gen
  end
  
  def self.artist_count
     art = {}
    @@artists.collect do |artist|
      art[artist] = @@artists.count
    end
    art
  end
  
end




