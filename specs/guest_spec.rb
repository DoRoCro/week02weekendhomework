require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test
  def setup
    @guest1 = Guest.new("Dave")
    @song1 = Song.new("My Way", "Frank Sinatra", "Start spreading...")
  end

  def test_guest_has_name
    assert_equal("Dave", @guest1.name)
  end

  def test_guest_can_change_favourite_song
    @guest1.change_favourite_song(@song1)
    assert_equal(@song1, @guest1.favourite_song)
  end

  def test_guest_has_favourite_song
    assert_equal(false, @guest1.favourite_song?)
    @guest1.change_favourite_song(@song1)
    assert_equal(true, @guest1.favourite_song?)
  end


end
