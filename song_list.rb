require_relative('list_array')

class SongList < ListArray

  def play
    for song in @contents
      puts song.lyrics
    end
  end


end