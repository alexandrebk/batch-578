class Recipe

  attr_reader :name, :description
  # def initialize(name, description)
  #   @name = name
  #   @description = description
  # end

  def initialize(attributes = {})
    @name        = attributes[:name]
    @description = attributes[:description]
    @done      = attributes[:done]
  end

  def done?
    @done
  end

  def done!
    @done  = true
  end
end