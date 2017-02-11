require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < Minitest::Test

  def test_room_has_name
    room1name = "aplha"
    room1 = Room.new(room1name)
    assert_equal(room1name, room1.name)
  end

end