class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def song_name=(song_name)
    @name
  end

  def artist_name=(name)
    self.artist_name = Artist.new(name)
  end

  def Artist.find_or_create_by_name(artist)

  end

  def Artist.add_song(song)

  end

  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split("-")[1]
    song
  end

end
