class Room
  attr_reader :name, :songlist, :capacity_limit
  def initialize(name, guest_list, songlist)
    @name = name
    @guest_list = guest_list
    @songlist = songlist
    @capacity_limit = 0
  end

  def add_songs(list_of_songs)
    @songlist.add_list_to_list(list_of_songs)
  end

  def clear_songlist
    return @songlist.empty_list
  end

  def check_in(guest)
    @guest_list.add_element_to_list(guest)
  end

  def check_out(guest)
    return @guest_list.remove_from_list(guest)
  end

  def contains_guest?(guest_to_find)
    return @guest_list.contains?(guest_to_find)
  end
end