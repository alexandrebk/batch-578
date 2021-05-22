require_relative 'task'
require 'sqlite3'

DB = SQLite3::Database.new('tasks.db')
DB.results_as_hash = true

puts 'Task.find'
task = Task.find(1)
puts "#{task.done ? "[x]" : "[ ]"} #{task.title}"

task = Task.find(100)

if task == nil
  puts 'task is nil for id 100'
else
  puts 'Be careful taks Should be nil'
end

puts ''
puts 'Create'

task = Task.new(title: 'toto', description: 'Do toto')
task.save
toto_id = task.id

puts 'Id is not nil ?'
puts task.id != nil

puts ''
puts 'Update'

puts 'Title should be toto'
puts task.title
task.title = 'titi'
task.save

task = Task.find(toto_id)
puts 'Title should be titi'
puts task.title

puts ''
puts 'Task.all'

tasks = Task.all
tasks.each do |task|
  puts "#{task.id} - #{task.done ? "[x]" : "[ ]"} #{task.title} | #{task.description}"
end

puts ''
puts 'Destroy'

task = Task.find(1)
task.destroy

puts Task.find(1) == nil # Should output `true`
