require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "people"

# create a new hotel

tiny_hotel = Hotel.new("B & B", 1)
big_hotel = Hotel.new("Guest House Paradiso", 20)

# create a room
# big_room = Double_Room.new("Room 2")
# crappy_room = Room.new("Room 1")

tiny_hotel_rooms = 1.times.map { |i| Room.new(i+1) }
tiny_hotel_rooms.each { |room| tiny_hotel.add_room(room) }

big_hotel_rooms = 10.times.map { |i| Room.new(i+1) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }
big_hotel_rooms = 10.times.map { |i| Double_Room.new(i+11) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }

# check capacity of hotel




# create a person

# person_1 = People.new


binding.pry;''