require('minitest/autorun')
require('minitest/rg')
# require_relative('../room')
require_relative('../song')
# require_relative('../guest')
# require_relative('../guest_list')
require_relative('../song_list')

class TestSongList < MiniTest::Test

  def setup
    @song1 = Song.new("My Way", "Frank Sinatra", "Start spreading...")
    @song2 = Song.new("I Will Survive", "Goria Gaynor", "At first I was ...")
    @song3 = Song.new("Is this the way to Amarillo", "Tony Christie", "La La La...")
    
    @a_songlist = SongList.new
    @a_songlist.add_list_to_list([@song1, @song2, @song3])
  end

  def test_can_play_songlist
    @a_songlist.play

  end

end
