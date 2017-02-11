require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test
  def setup
    @guest1 = Guest.new("Dave")
  end
  
  def test_guest_has_name
    assert_equal("Dave", @guest1.name)
  end


end
