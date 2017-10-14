require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect {|f| f.sub("#{path}/","")}
  end

  def import(path)
    filename = @files
    Song.new_by_filename(filename)
  end

# You should write code that responds to MP3Importer.new('./db/mp3s').import. Google around for how to get a list of files in a directory! Make sure you only get .mp3 files.

end
