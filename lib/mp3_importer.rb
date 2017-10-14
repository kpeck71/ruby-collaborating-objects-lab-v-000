require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob["./db/mp3s/"]
    #files.collect {|f| f.sub(/db\/mp3s\//)}
  end

  def import(path)
    filename = path.collect {|f| f}
    Song.new_by_filename(filename)
  end

# You should write code that responds to MP3Importer.new('./db/mp3s').import. Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.

end
