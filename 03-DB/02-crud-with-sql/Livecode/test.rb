require_relative 'task'
require 'sqlite3'

DB = SQLite3::Database.new('tasks.db')
DB.results_as_hash = true

puts '#find'
task = Task.find(1)
puts "#{task.done ? "[x]" : "[ ]"} #{task.title}"

puts '#create'

task = Task.new(title: 'toto')
task.save

puts task.id.present?

puts '.update'

task.done = true
task.save

task = Task.find(1)
puts "#{task.done ? "[x]" : "[ ]"} #{task.title}"

puts '.all'

tasks = Task.all
tasks.each do |task|
  puts "#{task.done ? "[x]" : "[ ]"} #{task.title}"
end

puts '.destroy'

task = Task.find(1)
task.destroy

puts Task.find(1) == nil # Should output `true`
