require_relative "room"
require_relative "people"

class Hotel
  attr_reader :rooms, :name
  def initialize (hotel_name)
    @name = hotel_name
    @rooms = []
  end


  def add_room(room)
    # @rooms << {room.name => room}
    @rooms << room
  end 

  # def check_vacancies
  #   vacancies = @rooms.size

  #   puts "#{@name} has a total of #{@rooms.size} room(s)"
  #   puts "There are #{vacancies} vacancies"
  # end

  def check_guest (room_number)
    @rooms[room_number-1].guest
  end

  def add_guest (name, room_number)
    if @rooms[room_number-1].guest[0] == nil
      @rooms[room_number-1].guest.fill name
    else
      puts "room is occupied"
    end
      
  end

  def remove_guest (room_number)
    @rooms[room_number-1].guest.fill nil
  end


end