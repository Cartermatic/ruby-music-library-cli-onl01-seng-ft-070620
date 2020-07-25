class Artist
  
  extend Concerns::Findable
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    
    save
  end
  
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def self.create(name)
   artist = Artist.new(name)
   artist.save
   artist
  end
  
  def self.count
    @@all.size
  end
    
  def add_song(song)
    song.artist = self
  end
    
end