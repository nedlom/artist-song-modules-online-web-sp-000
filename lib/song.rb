class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    self.all.reset
  end
end






















# class Song
#   include Memorable::InstanceMethods, Paramable
#   extend Memorable::ClassMethods, Findable
  
#   attr_accessor :name, :artist
#   @@all = []
  
#   def self.all
#     @@all
#   end
# end