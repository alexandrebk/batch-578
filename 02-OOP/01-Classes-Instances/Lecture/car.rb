require 'amazing_print'

class Car
  attr_accessor :color
  attr_reader :brand
  # attr_reader :color, :brand
  # attr_writer :color

  def initialize(color)
    @color = color
    @engine_started = false
  end

  def engine_started?
    return @engine_started
  end

  def start_engine
    @engine_started = true
  end

  # def color
  #   return @color
  # end

  # def color=(new_color)
  #   @color = new_color
  # end
end




my_car = Car.new('blue')

your_car = Car.new('red')

your_car.start_engine

puts my_car.engine_started?
puts your_car.engine_started?

your_car.color = 'yellow'
p your_car.color # yellow
