require "./Product"
require "./Films"
require "./Books"

film1 = Films.new(price: 990, quantity: 5, name: "Леон", year: 1994, produser: "Люк Бессон")
book1 = Books.new(price: 1500, quantity: 10, name: "Идиот", genre: "роман", author: "Федор Достоевский")
film2 = Films.new(name: "Дурак", year: 2014, produser: "Юрий Быков", price: 350, quantity: 1)

#перезапись переменных
film1.name = "ддд"
film1.year = 1978

puts "#{film1.to_str}"
puts "#{film2.to_str}"
puts "#{book1.to_str}"

