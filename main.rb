require "./Product"
require "./Films"
require "./Books"

film1 = Films.new(price: 200,quantity: 5)

puts "Фильм Леон стоит #{film1.price} руб"