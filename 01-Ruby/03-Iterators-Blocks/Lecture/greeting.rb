def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return "Hello, #{full_name}"
end

# puts greet('john', 'lennon') # "Hello, John LENNON"

def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end

message = beautify_name("john", "lennon") do |name|
  "Greetings #{name}, you look quite fine today!"
end

message_bis = beautify_name("john", "lennon") do |name|
  "Hello #{name}, I'm sure you are #{name} !"
end

p message_bis
