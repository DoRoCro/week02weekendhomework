require_relative('./song')
require_relative('./guest')
require_relative('./room')
require_relative('./bar')
require_relative('./song_list')
require_relative('./guest_list')
require_relative('./viewer')

class Caraoke

  def initialize(name, viewer)
    @name = name
    @viewer = viewer

    songlist1 = SongList.new
    songlist1.add_list_to_list(
     [
       Song.new("My Way", "Frank Sinatra", "Start spreading..."),
        Song.new("I Will Survive", "Goria Gaynor", "At first I was ..."),
        Song.new("Is this the way to Amarillo", "Tony Christie", "La La La...")
      ]
    )

    room1 = Room.new( "Classics", GuestList.new, songlist1 )
    room2 = Room.new( "70's favourites", GuestList.new, songlist1)

    guestlist1 = GuestList.new
    guestlist1.add_element_to_list(Guest.new("Ann"))
    guestlist1.add_element_to_list(Guest.new("Bob"))
    guestlist1.add_element_to_list(Guest.new("Cas"))

    guestlist2 = GuestList.new
    guestlist2.add_element_to_list(Guest.new("Dave"))
    guestlist2.add_element_to_list(Guest.new("Ed"))
    guestlist2.add_element_to_list(Guest.new("Fred"))
  end

  def run()
    bar = Bar.new( @name )
    @viewer.start(@bar.name)
  end

end

caraoke = Caraoke.new("Crazy CodeClan Caraoke Bar", Viewer.new)
caraoke.run
