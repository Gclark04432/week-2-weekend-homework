require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../guest')
require_relative ('../song')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Gary Clark", 33, 100)
    @guest2 = Guest.new("Graeme Herd", 34, 50)
    @guest3 = Guest.new("Darren Clark", 17, 100)
    @guest4 = Guest.new("Stuart Martin", 18, 0)
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


end
