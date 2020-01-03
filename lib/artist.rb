class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    a = Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select {|artist| artist.song}
  end 
  
  def genres 
    Song.all.collect {|artist| artist.genre}
  end 
  
end 