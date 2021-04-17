
require "json"
data = '{ "name": "Paris", "population": 2211000 }'
puts data.class

r = JSON.parse('{ "name": "Paris", "population": 2211000 }')

p r
p r.class
