class Patient
  attr_accessor :room
  def initialize(attributes = {})
    @name = attributes[:name] ||= "toto"
    @cured = attributes[:cured] || false

  end

  def cure!
    @cured =  true
  end

  def cured?
    @cured
  end

  # def set_room(room)
  #   @room = room
  # end
end