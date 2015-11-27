require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "people"

# create a new hotel

tiny_hotel = Hotel.new("B & B", 5)

# create a room and guest
person_1 = People.new
crappy_room = Room.new("Room 1", "#{person_1}")


binding.pry;''