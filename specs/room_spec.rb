require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../guest')
require_relative ('../song')
require_relative ('../room')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new(1, 100, 10)
    @room2 = Room.new(2, 30, 5)
    @room3 = Room.new(3, 10, 1)

    @song1 = Song.new("American Boy", "Estelle", 2008)
    @song2 = Song.new("Rap Devil", "Machine Gun Kelly", 2018)
    @song3 = Song.new("The Kill", "30 Seconds to Mars", 2005)
    @song4 = Song.new("Here With Me", "Dido", 1999)

    @guest1 = Guest.new("Gary Clark", 33, 100)
    @guest2 = Guest.new("Graeme Herd", 34, 50)
    @guest3 = Guest.new("Darren Clark", 17, 100)
    @guest4 = Guest.new("Stuart Martin", 18, 0)

  end

  def test_can_read_room_number
    assert_equal(2, @room2.room_number())
  end

  def test_can_read_room_till_value
    assert_equal(30, @room2.till())
  end

  def test_can_read_room_capacity_as_int
    assert_equal(1, @room3.capacity())
  end

  def test_room_list_starts_empty_by_default
    assert_equal(0, @room2.song_list_length())
  end

  def test_can_add_songs_to_empty_song_list
    @room3.add_song_to_room(@song1)
    assert_equal(1, @room3.song_list_length())
  end

  def test_can_start_a_room_with_songs_on_song_list
    room = Room.new(4, 5, 50, [@song1, @song3, @song4])
    assert_equal(3, room.song_list_length())
  end

  def test_guests_in_room_starts_empty_by_default
    assert_equal(0, @room1.number_of_guests_in_room())
  end

  def test_can_add_guests_to_empty_guests_in_room
    @room3.add_guest_to_room(@guest1)
    assert_equal(1, @room3.number_of_guests_in_room())
  end


end
