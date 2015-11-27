class Room
  attr_reader :name, :occupant
  def initialize(room_name, occupant = nil)
    @name = room_name
    @occupant = occupant
  end
end