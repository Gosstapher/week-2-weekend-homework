require_relative "room"
require_relative "people"

class Hotel
  attr_reader :rooms
  def initialize (hotel_name, number_of_rooms)
    @name = hotel_name
    @room_count = number_of_rooms
    @rooms = Array.new(number_of_rooms)
    add_rooms(@room_count)
  end

  def add_rooms (number_of_rooms)
    @rooms.fill { |i| Room.new(i+1)}
  end
end