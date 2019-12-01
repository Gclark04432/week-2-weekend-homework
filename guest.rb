class Guest

  attr_reader :name, :age, :wallet, :favourite_song

  def initialize(name, age, wallet, favourite_song)
    @name = name
    @age = age
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def celebrate_favourite_song(song)
    if song.title() == @favourite_song
      return "I love this song!!"
    end
    return false
  end

end
