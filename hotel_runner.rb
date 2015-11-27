require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "people"

# create a new hotel

tiny_hotel = Hotel.new("B & B", 1)

# create a room

crappy_room = Room.new("Room 1")

# create a person
person_1 = People.new


binding.pry;''