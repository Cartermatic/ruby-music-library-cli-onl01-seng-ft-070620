# class Genre 
  
#   extend Concerns::Findable
  
#   attr_accessor :name
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     save
#   end
  
#   def self.all
#     @@all
#   end
#   def save
#     @@all << self
#   end
  
#   def self.destroy_all
#     self.all.clear
#   end
  
#   def self.create(name)
#   genre = Genre.new(name)
#   genre.save
#   genre
#   end
  
#   def self.count
#     @@all.size
#   end
  
 
  
# end