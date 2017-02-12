class Viewer

  # def get_player_name(player_number)
  #   puts "Player #{player_number}: Enter name"
  #   return gets.chomp
  # end

  def start(bar_name)
    puts
    puts "Welcome to the #{bar_name}"
    gets.chomp
  end

  def show_check_in(room,guest)
    puts "#{guest.name} checks in to #{room.name}"
  end

  
end