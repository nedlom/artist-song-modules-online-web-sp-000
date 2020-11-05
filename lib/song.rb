class Song
  include Paramable
  extend Findable
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    self.all.clear
  end
  
  
  def self.count
    self.all.count
  end
  
  def self.find_by_name(name)
    self.all.detect {|s| s.name == name}
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