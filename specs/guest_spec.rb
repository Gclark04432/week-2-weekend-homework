require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../guest')
require_relative ('../song')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Gary Clark", 33, 100, "The Kill")
    @guest2 = Guest.new("Graeme Herd", 34, 50, "American Boy")
    @guest3 = Guest.new("Darren Clark", 17, 100, "Here With Me")
    @guest4 = Guest.new("Stuart Martin", 18, 0, "Rap Devil")

    @song1 = Song.new("American Boy", "Estelle", 2008)
    @song2 = Song.new("Rap Devil", "Machine Gun Kelly", 2018)
    @song3 = Song.new("The Kill", "30 Seconds to Mars", 2005)
    @song4 = Song.new("Here With Me", "Dido", 1999)
  end

  def  test_can_read_guest_name
    assert_equal("Graeme Herd", @guest2.name())
  end

  def test_can_read_guest_age
    assert_equal(17, @guest3.age())
  end

  def test_can_read_guest_wallet
    assert_equal(100, @guest1.wallet())
  end

  def test_can_read_favourite_song
    assert_equal("Rap Devil", @guest4.favourite_song())
  end

  def test_celebrate_favourite_song_works
    assert_equal("I love this song!!", @guest1.celebrate_favourite_song(@song3))
  end

  def test_celebrate_favourite_song_returns_false_if_not_correct
    assert_equal(false, @guest2.celebrate_favourite_song(@song3))
  end

end
