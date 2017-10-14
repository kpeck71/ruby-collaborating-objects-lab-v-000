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
    if @@all.include?(self) == false
      @all << self.new(name)
    end
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self
    else
      self.create(name)
    end
  end

  def print_songs
    @songs.collect {|s| s.name}
  end

end
