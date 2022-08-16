require 'pry'

class Artist
  extend Findable, Memorable::ClassMethods
  include Paramable, Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  # class attribute because of the double@
  @@artists = []

  def initialize
    super # => tells that method to look up its behavior in the method of the same name that loves in the parent, or super, class.
    @songs = []
  end

 

  # class method; returns all the artist
  def self.all
    @@artists
  end

  # instane method; accepts a song argument
  def add_song(song)
    # adds that song to the @songs (instance attribute) array.
    @songs << song
    #song has an artist attribute to be set to that specific artist
    song.artist = self
  end

  # instance method; accepts an arguments of songs (array)
  def add_songs(songs)
    # call the instance method add_song for each of the song
    songs.each { |song| add_song(song) }
  end

  # instance method
  # def to_param
  #   # gsub => used to replace all the matches of a pattern from a string. 
  #   # If the pattern is not found the string will be returned as it is.
  #   name.downcase.gsub(' ', '-')
  # end
end
