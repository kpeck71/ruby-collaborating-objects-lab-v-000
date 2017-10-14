class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def artist_name=(artist_name)
    @name
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find
  end

  def self.create
    
  def self.find_or_create_by_name
    if @@all.include?(self)
      self
    else
      self.new(name)
    end
  end

  def print_songs
    @songs.collect {|s| s.name}
  end

end
