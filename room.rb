class Room

attr_reader :room_number, :till, :capacity

  def initialize(room_number, till, capacity, song_list = [])
    @room_number = room_number
    @till = till
    @capacity = capacity
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

  def add_guest_to_room(guest)
    @guests_in_room.push(guest)
  end

end
