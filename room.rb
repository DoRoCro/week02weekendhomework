class Room
  attr_reader :name, :songlist
  def initialize(name)
    @name = name
    @songlist = []
  end

  def add_songs(list_of_songs)
    @songlist.concat(list_of_songs) 
  end
end