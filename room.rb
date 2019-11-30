class Room

  attr_reader :room_number, :till, :capacity, :entrance_fee

  def initialize(room_number, entrance_fee, till, capacity, song_list = [])
    @room_number = room_number
    @till = till
    @capacity = capacity
    @entrance_fee = entrance_fee
    @song_list = song_list
    @guests_in_room = []
  end

  def song_list_length()
    return @song_list.length()
  end

  def add_song_to_room(song)
    @song_list.push(song)
  end

  def number_of_guests_in_room
    return @guests_in_room.length()
  end

  def check_guest_in(guest)
    if check_room_space_for_guest && guest_can_afford_entry(guest)
      @guests_in_room.push(guest)
    end
  end

  def check_guest_out(guest)
    @guests_in_room.delete(guest)
  end

  def check_room_space_for_guest
    number_of_guests_in_room() < capacity
  end

  def guest_can_afford_entry(guest)
    guest.wallet() >= @entrance_fee
  end

end
