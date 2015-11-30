require_relative "room"
require_relative "people"

class Hotel
  attr_reader :rooms, :name, :vacancies
  def initialize (hotel_name)
    @name = hotel_name
    @rooms = []
    @vacancies = 0
  end

  def add_room(room)
    # @rooms << {room.name => room}
    @rooms << room
    set_vacancies
  end 

  def set_vacancies
    @vacancies = @rooms.size
  end

  def check_vacancies
  #   vacancies = @rooms.each {|i| @rooms[i].guest[0] if @rooms[i].guest[0] == nil}
    puts "#{@name} has a total of #{@rooms.size} room(s)"
    puts "There are #{@vacancies} vacancies"
  end

  def check_guest(room_number)
    @rooms[room_number-1].guest[0][0].name
  end


  def add_guest (*name, room_number)
    if @rooms[room_number-1].guest[0] == nil
      @rooms[room_number-1].guest.fill name
      @vacancies -= 1
      puts "room number : #{room_number} is now occupied"
    else
      puts "room is occupied"
    end  
  end

  def remove_guest (room_number)
    if @rooms[room_number-1].guest[0] != nil
      @rooms[room_number-1].guest.fill nil
      @vacancies += 1
      puts "room number : #{room_number} is now empty"
    else
      puts "This room is already vacant"
    end
  end


end