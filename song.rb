class Song

  attr_reader :title, :artist, :year

  def initialize(title, artist, year)
    @title = title
    @artist = artist
    @year = year
  end

end
