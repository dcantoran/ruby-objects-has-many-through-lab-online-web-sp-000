class Song 
  
  attr_accessor :song, :artist, :genre
  @@all = []
  
  def initialize(song,artist, genre)
    @song = song
    @artist = artist
    @genre = genre 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 