require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "people"

# create a new hotel

tiny_hotel = Hotel.new("B & B")
big_hotel = Hotel.new("Guest House Paradiso")

# create a rooms in the hotels

tiny_hotel_rooms = 1.times.map { |i| Room.new(i+1) }
tiny_hotel_rooms.each { |room| tiny_hotel.add_room(room) }

big_hotel_rooms = 10.times.map { |i| Room.new(i+1) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }
big_hotel_rooms = 10.times.map { |i| Double_Room.new(i+11) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }

# check capacity of hotel
puts "#{tiny_hotel.name} has #{tiny_hotel.rooms.length} room(s) in total"
puts "#{big_hotel.name} has #{big_hotel.rooms.length} room(s) in total"

# create people in order to populate hotel rooms
person_1 = People.new("Ashley")
person_2 = People.new("Loki")
person_3 = People.new("Brigid")
person_4 = People.new("Ryland")
person_5 = People.new("Erin")
person_6 = People.new("Fletcher")
person_8 = People.new("Willow")
person_9 = People.new("Wally")
person_10 = People.new("Phillipa")
person_11 = People.new("Kobe")
person_12 = People.new("Layla")
person_13 = People.new("Hector")
person_14 = People.new("Joni")
person_15 = People.new("Richard")

binding.pry;''