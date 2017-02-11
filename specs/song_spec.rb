require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def test_song_has_name_artist_lyrics
    song1 = Song.new("songname", "artist", "lyrics")
    assert_equal("songname", song1.name)
    assert_equal("artist", song1.artist)
    assert_equal("lyrics", song1.lyrics)
  end

end