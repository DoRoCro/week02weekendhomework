require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < Minitest::Test

  def setup
    room1name = "alpha"
    @room1 = Room.new(room1name)
    
  end

  def test_room_has_name
    assert_equal('alpha', @room1.name)
  end

  def test_room_has_songlist

  end

end