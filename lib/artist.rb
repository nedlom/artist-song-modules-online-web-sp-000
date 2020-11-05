class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def to_param
    x = artist.name.downcase.split(" ")
    x.join("-")
    binding.pry
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