require_relative "patient.rb"
require_relative "room.rb"

marie = Patient.new(name:"marie")
maria = Patient.new(name:"maria")

jaune = Room.new(capacity: 2)
verte = Room.new(capacity: 2)

lee = Patient.new(name: "lee")

jaune.add_patient(marie)
jaune.add_patient(maria)

jaune.full?
# true

# puts "tout est ok"

# begin
#   jaune.add_patient(lee)
# rescue Room::OverCapacity => exception
#   puts "déso slack est down reviens later"
# end

# puts "hello"

jaune.patients
puts "ma room est :"
p jaune.object_id

puts "elle contients des patients"
p jaune.patients

puts "marie est dans la room :"
p marie.room.object_id

# #<Room:0x00007f910c1097e0 @name=nil, @capacity=2, @patients=[#<Patient:0x00007f910c109948 @name="marie", @cured=false>, #<Patient:0x00007f910c1098a8 @name="maria", @cured=false>]>



class PatientRepository 

  def initialize
    #....
    load_csv
  end

  private 

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      patient = Patient.new(row)
      
      room = @room_repository.find(room_id)
      # instance de room ayant le room_id correspondant
      patient.room = room

    end
  end
end