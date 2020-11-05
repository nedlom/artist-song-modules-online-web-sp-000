class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def self.all
    @@all
  end

end