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

end
