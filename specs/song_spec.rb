require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../song')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("American Boy", "Estelle", 2008)
    @song2 = Song.new("Rap Devil", "Machine Gun Kelly", 2018)
    @song3 = Song.new("The Kill", "30 Seconds to Mars", 2005)
    @song4 = Song.new("Here With Me", "Dido", 1999)
  end

  def  test_can_read_song_title
    assert_equal("Here With Me", @song4.title())
  end

  def test_can_read_song_artist
    assert_equal("Estelle", @song1.artist())
  end

  def test_can_read_release_year
    assert_equal(2005, @song3.year())
  end

end
