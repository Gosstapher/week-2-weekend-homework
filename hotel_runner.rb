require "pry-byebug"
require_relative "hotel"
require_relative "room"
require_relative "people"

# create a new hotel

big_hotel = Hotel.new("Guest House Paradiso")

# create a rooms in the hotels

big_hotel_rooms = 10.times.map { |i| Room.new(i+1) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }
big_hotel_rooms = 10.times.map { |i| Double_Room.new(i+11) }
big_hotel_rooms.each { |room| big_hotel.add_room(room) }

# check capacity of hotel
puts "check the capacity of the hotels"
puts "\n"
puts "#{big_hotel.name} has #{big_hotel.rooms.length} room(s) in total"
puts "\n"

# create people in order to populate hotel rooms
person_1 = People.new("Ashley")
person_2 = People.new("Loki")
person_3 = People.new("Brigid")
person_4 = People.new("Ryland")
person_5 = People.new("Erin")
person_6 = People.new("Fletcher")
person_7 = People.new("Willow")
person_8 = People.new("Wally")
person_9 = People.new("Phillipa")
person_10 = People.new("Kobe")
person_11 = People.new("Layla")
person_12 = People.new("Hector")
person_13 = People.new("Joni")
person_14 = People.new("Richard")

# allow guests to check into rooms
puts "allow guests to check into rooms"
puts "\n"
big_hotel.add_guest(person_1, 1)
big_hotel.add_guest(person_2, 5)
big_hotel.add_guest(person_3, 7)
big_hotel.add_guest(person_4, 10)
big_hotel.add_guest(person_5, person_6, 12)
big_hotel.add_guest(person_7, person_8, 13)
big_hotel.add_guest(person_9, person_10, 15)
big_hotel.add_guest(person_11, person_12, 19)
puts "\n"

# make sure no double booking occurs
puts "make sure rooms can not be double booked"
puts "\n"
puts "try and book room 5 again"
big_hotel.add_guest(person_13, 5)
puts "\n"
puts "try and book room 13 again"
big_hotel.add_guest(person_14, 13)
puts "\n"

# allow guests to check out of rooms
puts "allow guests to check out of rooms"
puts "\n"
big_hotel.remove_guest(1)
big_hotel.remove_guest(10)
big_hotel.remove_guest(15)
puts "\n"

# make sure empty rooms can't be emptied further
puts "make sure trying to empty rooms that are already empty doesn't break the code"
puts "\n"
puts "try and remove guest from room 1 again"
big_hotel.remove_guest(1)
puts "\n"

# check occupancy of hotel, how many vacant rooms available.
puts "check the number of available rooms in the hotel"
puts "\n"
big_hotel.check_vacancies

# binding.pry;''