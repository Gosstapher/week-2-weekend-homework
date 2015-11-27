require_relative "room"
require_relative "people"

class Hotel
  attr_reader :rooms
  def initialize (hotel_name, number_of_rooms)
    @name = hotel_name
    @room_count = number_of_rooms
    @rooms = Array.new(@room_count) { Hash.new }
  end
end