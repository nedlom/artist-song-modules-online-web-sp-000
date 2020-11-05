class Artist
  
  attr_accessor :name
  
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
  
  def to_param
    x = self.name.downcase.split(" ")
    x.join("-")
  end
  
  def self.count
    self.all.count
  end
  
  def self.find_by_name(name)
    self.all.detect {|a| a.name == name}
  end
  
end























# class Artist
#   include Memorable::InstanceMethods, Paramable
#   extend Memorable::ClassMethods, Findable
  
#   attr_accessor :name, :songs
#   @@all = []
  
#   def self.all
#     @@all
#   end
  
#   def initialize
#     super
#     @songs = []
#   end
  
#   def add_song(song)
#     song.artist = self
#     self.songs << song
#   end
  
#   def add_songs(songs)
#     songs.each{|s| self.add_song(s)}
#   end
# end