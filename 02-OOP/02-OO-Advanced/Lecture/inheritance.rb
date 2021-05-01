class Building
  attr_reader :name, :width, :length

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    width * length
  end
end


class House < Building

end

class Castle < Building
  attr_reader :butler

  def has_a_butler?
    @butler != nil
  end

  def floor_area
    super + 300
  end
end

castle = Castle.new('Windsor', 3, 45)

puts castle.name
puts castle.floor_area
# puts castle.has_a_butler?
# puts castle.butler

# Castle.has_a_butler? #=> undef method

# house = House.new('White House', 400, 500)
# puts house.name
# puts house.has_a_butler? #=>  undefined method `has_a_butler?'
# puts house.butler



