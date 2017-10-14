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

  def self.find(name)
    @@all.include?(self)
  end

  def self.create(name)
    self.new(name)
  end

  def self.find_or_create_by_name
    if self.find(name)
      name
    else
      self.create(name)
    end
  end

  def print_songs
    @songs.collect {|s| s.name}
  end

end
