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

class Castle < Building
  def self.categories
    ['Medevial', 'New', 'Cubique']
  end
end

castle = Castle.new('Windsor', 3, 45)

puts castle.name
puts castle.floor_area
# puts castle.has_a_butler?
# puts castle.butler

# Castle.has_a_butler? #=> undef method

p Castle.categories
p castle.categories #=> undef method
