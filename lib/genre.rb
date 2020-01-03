class Genre 
  
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
  
  def songs 
    Song.all.select {|genre| genre.song}
  end 
  
  def artists 
    Song.all.collect {|genre| genre.artist}
  end 
  
end 