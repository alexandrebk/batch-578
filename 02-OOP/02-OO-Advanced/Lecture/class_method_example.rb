# Basic ruby

def price_per_square_meter(city)
  case city
  when "Paris" then 9000
  when "Brussels" then 3000
  else raise Exception.new("No data for #{city}")
  end
end

puts price_per_square_meter('Paris')

# OOP

class House
  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end

puts House.price_per_square_meter('Paris')

