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
    if self.number_of_guests < @capacity_limit
      @guest_list.add_element_to_list(guest)
      return true
    end
    return false
  end

  def check_out(guest)
    return @guest_list.remove_from_list(guest)
  end

  def contains_guest?(guest_to_find)
    return @guest_list.contains?(guest_to_find)
  end

  def number_of_guests
    return @guest_list.contents.count
  end

  def set_capacity_limit(number)
    @capacity_limit = number
  end
end