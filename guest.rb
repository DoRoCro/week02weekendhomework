require_relative('song')
class Guest

  attr_reader :name, :favourite_song

  def initialize(name)
    @name = name
    @favourite_song = nil
  end

  def change_favourite_song(new_fav_song)
    @favourite_song = new_fav_song
    return
  end

end