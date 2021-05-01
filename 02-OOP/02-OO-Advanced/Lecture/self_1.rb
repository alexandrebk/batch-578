class Castle
  def initialize(name, ruler)
    @name, @ruler = name, ruler
  end

  def castle_details
    "#{@name} is ruled by #{self.ruler_name}"
  end

  def ruler_name
    @ruler.capitalize
  end

end

dragonstone = Castle.new("Dragonstone", "targaryen")
puts dragonstone.castle_details # => "Dragonstone is ruled by Targaryen"


