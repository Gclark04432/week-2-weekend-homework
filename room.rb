class Room

attr_reader :room_number, :till, :capacity

  def initialize(room_number, till, capacity, song_list = [])
    @room_number = room_number
    @till = till
    @capacity = capacity
    @song_list = song_list
  end

  def song_list_length()
    return @song_list.length()
  end

  def add_song_to_room(song)
    @song_list.push(song)
  end

end
