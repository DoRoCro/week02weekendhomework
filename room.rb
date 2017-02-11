class Room
  attr_reader :name, :songlist
  def initialize(name)
    @name = name
    @songlist = []
  end
end