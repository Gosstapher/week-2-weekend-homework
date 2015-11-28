class Room
  attr_reader :name, :guest
  def initialize(room_name, guest = nil)
    @name = room_name
    @guest = guest
    # @occupant = {@guest.name => @guest}
  end
end

class Double_Room < Room
  def initialize(room_name, guest_1 = nil, guest_2 = nil)
    @name = room_name
    @guest_1 = guest_1
    @guest_2 = guest_2
    # @occupants = [ {@guest_1.name => @guest_1}, {@guest_2.name => @guest_2} ]
  end
end