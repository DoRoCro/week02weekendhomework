require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')
require_relative('../guest_list')
require_relative('../song_list')

# require('pry')

class TestRoom < Minitest::Test

  def setup
    room1name = "alpha"
    
    @song1 = Song.new("My Way", "Frank Sinatra", "Start spreading...")
    @song2 = Song.new("I Will Survive", "Goria Gaynor", "At first I was ...")
    @song3 = Song.new("Is this the way to Amarillo", "Tony Christie", "La La La...")
    
    @a_songlist = [@song1, @song2, @song3]

    @room1 = Room.new(room1name, GuestList.new, SongList.new)

    @guest1 = Guest.new("Zaphod")
    @guest2 = Guest.new("Trillian")
     
  end

  def test_room_has_name
    assert_equal('alpha', @room1.name)
  end

  def test_new_room_has_empty_songlist
    assert_equal([], @room1.songlist.contents)
  end

  def test_can_add_song_to_room_songlist
    @room1.add_songs(@a_songlist)
    assert_equal([@song1, @song2, @song3], @room1.songlist.contents)
  end

  def test_room_can_clear_songlist
    @room1.add_songs(@a_songlist)
    result = @room1.clear_songlist
    assert_equal( [], @room1.songlist.contents )
  end

  def test_room_can_check_in_guest
    @room1.set_capacity_limit(4)
    @room1.check_in(@guest1)
    assert_equal(true, @room1.contains_guest?(@guest1))
  end

  def test_room_can_check_out_guest
    @room1.set_capacity_limit(4)
    @room1.check_in(@guest1)
    result = @room1.check_out(@guest1)
    assert_equal(false, @room1.contains_guest?(@guest1))
    assert_equal(@guest1, result)
  end

  def test_new_room_has_capacity
    assert_equal(0, @room1.capacity_limit)
  end

  def test_room_can_set_capacity
    @room1.set_capacity_limit(4)
    assert_equal(4, @room1.capacity_limit)
  end

  def test_room_can_add_guests_to_capacity_limit_only
    @room1.set_capacity_limit(4)
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)
    assert_equal(4, @room1.number_of_guests)
  end

end