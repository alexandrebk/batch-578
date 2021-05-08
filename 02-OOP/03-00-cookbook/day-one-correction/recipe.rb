class Recipe

  attr_reader :name, :description
  # def initialize(name, description)
  #   @name = name
  #   @description = description
  # end

  def initialize(attributes = {})
    @name = attributes[:name]
    @description = attributes[:description]
  end
end