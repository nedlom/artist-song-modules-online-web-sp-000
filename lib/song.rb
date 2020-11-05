class Song
  
  def initialize
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.re
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