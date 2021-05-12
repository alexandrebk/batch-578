class Room
  attr_reader :patients
  attr_accessor :id
  class OverCapacity < Exception
  end
  def initialize(attributes = {})
    @name = attributes[:name]
    @capacity = attributes[:capacity]
    @patients  = []
  end

  def full?
    @capacity == @patients.size
  end

  def add_patient(patient)
    if full?
      # ne pas ajouter
      fail Room::OverCapacity, "room est full!"
    else
      patient.room = self
      @patients << patient
    end
  end
end

# Nokogori::html.open

# module Nokogori
#   class html
#     def open
#     end
#   end
# end