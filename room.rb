class Room

attr_reader :room_number, :till, :capacity

  def initialize(room_number, till, capacity)
    @room_number = room_number
    @till = till
    @capacity = capacity
  end

end
