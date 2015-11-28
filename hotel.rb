require_relative "room"
require_relative "people"

class Hotel
  attr_reader :rooms
  def initialize (hotel_name)
    @name = hotel_name
    @rooms = []
  end


  def add_room(room)
    @rooms << {room.name => room}
  end 

  def check_vacancies
    vacancies = @rooms.size
    puts "#{@name} has a total of #{@rooms.size} room(s)"
    puts "There are #{vacancies} vacancies"
  end


end