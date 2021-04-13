musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

# for
for i in 0..5
  puts i
end

# for
for index in 0...(musicians.size)
  puts musicians[index]
end

# for
for musician in musicians
  puts musician
end

# iterator
musicians.each do |musician|
  puts "Hello #{musician}"
end

# iterator
musicians.each do |m|
  puts m
end

# iterator
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end

musicians_upcase = musicians.map do |musician|
  musician.upcase
end

musicians_first_name = musicians.map do |musician|
  musician.split.first
end

calcul = musicians.count do |musician|
  musician.start_with?('R')
end

p calcul

musicians_with_r = musicians.select do |musician|
  musician.start_with?('R')
end

p musicians_with_r

musicians_with_no_r = musicians.reject do |musician|
  musician.start_with?('R')
end

musicians_with_no_r = musicians.reject { |musician| musician.start_with?('R') }
p musicians_with_no_r

musicians_administratif = musicians.map do |musician|
  first_name = musician.split.first
  last_name = musician.split.last.upcase
  puts first_name

  "#{first_name} #{last_name}"
end

p musicians_administratif
