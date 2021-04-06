
def say_hello(first_name, last_name)
  message = "Hello #{first_name.capitalize} #{last_name.upcase}, bienvenue au Wagon !"
  return message
end

puts say_hello('marie', 'dupont')
puts say_hello('Matthieu', 'durand')
puts say_hello('Lee', 'doe')

def max_number(x, y)
  if x > y
    return x
  else
    return y
  end
end

a = 22
b = 5

puts max_number(a, b)

def what_time
  Time.now.strftime("%B %d")
end

puts what_time

puts '....'
puts what_time

text = 'Hello'


puts text.upcase!

puts text
