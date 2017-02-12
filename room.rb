class Room
  attr_reader :name, :songlist 
  def initialize(name, guest_list)
    @name = name
    @guest_list = guest_list
    @songlist = []
  end

  def add_songs(list_of_songs)
    @songlist.concat(list_of_songs) 
  end

  def clear_songlist
    @songlist = []
  end

  def check_in(guest)
    @guest_list.add_element_to_list(guest)
  end

  def contains_guest?(guest_to_find)
    return @guest_list.contains?(guest_to_find)
  end
end