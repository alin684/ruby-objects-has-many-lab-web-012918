class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(new_song_by_name)
    newsong = Song.new(new_song_by_name)
    newsong.artist = self
    @songs << newsong
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
