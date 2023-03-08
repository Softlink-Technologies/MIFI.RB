class Song
  attr_accessor :title, :artist, :duration
  
  def initialize(title, artist, duration)
    @title = title
    @artist = artist
    @duration = duration
  end
  
  def play
    puts "Now playing: #{@title} by #{@artist} (#{@duration} minutes)"
  end
end

class Playlist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def play_all
    puts "Playing playlist: #{@name}"
    @songs.each do |song|
      song.play
    end
  end
end

# Create some songs
song1 = Song.new("Stairway to Heaven", "Led Zeppelin", 8)
song2 = Song.new("Bohemian Rhapsody", "Queen", 6)
song3 = Song.new("Purple Haze", "Jimi Hendrix", 5)

# Create a playlist and add the songs
playlist1 = Playlist.new("Classic Rock")
playlist1.add_song(song1)
playlist1.add_song(song2)
playlist1.add_song(song3)

# Play the playlist
playlist1.play_all
