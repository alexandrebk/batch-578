class House
  attr_reader :name

  def initialize(name, butler)
    @name = name
    @butler = Butler.new('Nestor', self)
  end
end

class Butler
  attr_reader :nickname

  def initialize(nickname, house)
    @house = house # We want @house to store an instance of House
    @nickname = nickname
  end

  def clean_house
    puts "#{@house.name} cleaned!"
  end
end

house = House.new('LMDB')
puts house.name

butler = Butler.new('Alfred', house)
puts butler.nickname
butler.clean_house


