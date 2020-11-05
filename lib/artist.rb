class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable
  
  attr_accessor :name
  
  @@all = []
  
  
  
  def self.all
    @@all
  end
  
  
  
  def songs
    Song.all.select {|s| s.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_songs(songs)
    songs.each {|s| s.artist = self}
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