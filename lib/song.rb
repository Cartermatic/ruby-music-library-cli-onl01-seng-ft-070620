class Song
  
  
  attr_accessor :name, :artist, :genre
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
   song = Song.new(name)
   song.save
   song
  end
  
  def self.count
    @@all.size
  end
  
  def self.find_by_name(name)
    @@all.detect{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      name = self.new(name)
    else
      find_by_name(name)
    end
  end
  
end