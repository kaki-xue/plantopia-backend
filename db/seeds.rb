# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlantLibrary.destroy_all

succulents = PlantLibrary.new(name: "Succulent",water_freq_avg:10, image: "https://images.unsplash.com/photo-1513358130276-442a18340285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
succulents.save

aloe = PlantLibrary.new(name: "Aloe plant",water_freq_avg:10, image: "https://images.unsplash.com/photo-1480585532350-07e43e6eb63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1059&q=80")
aloe.save

peace = PlantLibrary.new(name: "Peace lily",water_freq_avg:6, image: "https://images.unsplash.com/photo-1567465645848-b765281eca3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=952&q=80")
peace.save

snake_plant = PlantLibrary.new(name: "Snake Plant",water_freq_avg:10, image: "https://images.unsplash.com/photo-1565626929866-e11c64e607cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
snake_plant.save

fiddle_leaf= PlantLibrary.new(name: "Fiddle Leaf",water_freq_avg:10, image: " https://images.unsplash.com/photo-1507746212228-2d3645cbeb56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=595&q=80
")
fiddle_leaf.save

spider_plant = PlantLibrary.new(name: "Spider Plant",water_freq_avg:6, image: "https://images.unsplash.com/photo-1524492367108-d2f94fdd0db0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
spider_plant.save

calathea = PlantLibrary.new(name: "Calathea",water_freq_avg:7, image: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
calathea.save

citrus_tree = PlantLibrary.new(name: "Citrus Tree",water_freq_avg:6, image: "https://images.unsplash.com/photo-1546066165-1976e440441b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
citrus_tree.save

orchid = PlantLibrary.new(name: "Orchid",water_freq_avg:5, image: "https://images.unsplash.com/photo-1534885320675-b08aa131cc5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80
")
orchid.save

rubber_plant = PlantLibrary.new(name: "Rubber Plant",water_freq_avg:5, image: "https://images.unsplash.com/photo-1512951670161-b5c6c632b00e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
rubber_plant.save

philodendron = PlantLibrary.new(name: "Philodendron",water_freq_avg:8, image: "https://images.unsplash.com/photo-1510505751526-76254482fd38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=951&q=8")
philodendron.save

ficus_tree = PlantLibrary.new(name: "Ficus Tree",water_freq_avg:5, image: "https://images.unsplash.com/photo-1507746212228-2d3645cbeb56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=595&q=80
")
ficus_tree.save

puts "Cool you created #{PlantLibrary.count}! You rock Sarah"
