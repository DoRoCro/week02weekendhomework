require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require('pry')

class TestRoom < Minitest::Test

  def setup
    room1name = "alpha"
    
    @song1 = Song.new("My Way", "Frank Sinatra", "Start spreading...")
    @song2 = Song.new("I Will Survive", "Goria Gaynor", "At first I was ...")
    @song3 = Song.new("Is this the way to Amarillo", "Tony Christie", "La La La...")
    
    @a_songlist = [@song1, @song2, @song3]

    @room1 = Room.new(room1name)
     
  end

  def test_room_has_name
    assert_equal('alpha', @room1.name)
  end

  def test_new_room_has_empty_songlist
    assert_equal([], @room1.songlist)
  end

  def test_can_add_song_to_room_songlist
    @room1.add_songs(@a_songlist)
    assert_equal([@song1, @song2, @song3], @room1.songlist)
  end

end