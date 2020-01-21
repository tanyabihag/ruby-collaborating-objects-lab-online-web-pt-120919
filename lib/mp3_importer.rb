class MP3Importer
 
 attr_accessor :path, :file_field
 
 def initialize(path)
   @path = path 
  end
  
  def files(files)
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end 
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
end
  