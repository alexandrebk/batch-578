def timer
  puts 'Je suis ici'
  start_time = Time.now
  yield
  puts "Elapsed time: #{Time.now - start_time}s"
end

timer() do
  puts "I'm doing something slow..."
  sleep(4)
  puts "I'm done :)"
end

# Je suis ici
# I'm doing something slow...
# I'm done :)
# Elapsed time: 4.003182398s
