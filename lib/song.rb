class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    @@all.find{ |song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    self.find_by_name(name) || self.create_by_name(name)
=======
    @@all.each do |song|  
      if @@all.include?(song)
        song.find_by_name(name)
      else
        song.create_by_name(name)
      end
    end  
>>>>>>> fd20db731c26bbcf8f62ab54a4faee7a16e25bac
  end
  
  def self.alphabetical
    @@all.sort_by { |song| song.name}
  end
  
  def self.new_from_filename(name)
    split_array_with_ext = name.split(" - ")
    split_array = split_array_with_ext.map do |dunno|
      dunno.split(".").delete_if {|x| x == "mp3"}.join    
    end
    name = split_array[1]
    artist_name = split_array[0]
    song = self.new
    song.name =name
    song.artist_name = artist_name
<<<<<<< HEAD
    song
  end
  
  def self.create_from_filename(name)
    split_array_with_ext = name.split(" - ")
    split_array = split_array_with_ext.map do |dunno|
      dunno.split(".").delete_if {|x| x == "mp3"}.join    
    end
    name = split_array[1]
    artist_name = split_array[0]
    song = self.new
    song.name =name
    song.artist_name = artist_name
    song.save
    song
  end
  
  def self.destroy_all
    @@all.clear
=======
>>>>>>> fd20db731c26bbcf8f62ab54a4faee7a16e25bac
  end
end
