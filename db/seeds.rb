# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlantLibrary.destroy_all

succulents = PlantLibrary.new(name: "Succulent",water_freq_avg:10,description: "Never water your succulent if the soil is moist. Always let the soil get bone dry between waterings. That said, when you do water it, don't hold back. Flood the plant then let it drain and dry as fast as possible, like a desert storm. ",image: "https://images.unsplash.com/photo-1513358130276-442a18340285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
succulents.save

aloe = PlantLibrary.new(name: "Aloe plant",water_freq_avg:10,description:"Aloe plants are succulents, so follow the same instructions listed above. ", image: "https://images.unsplash.com/photo-1480585532350-07e43e6eb63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1059&q=80")
aloe.save

peace = PlantLibrary.new(name: "Peace lily",water_freq_avg:6, description:"Water your Peace Lily when the soil is dry 2” deep. If the soil takes longer to dry out, it’s in too low light. Also, this plant tolerates moist soil.",image: "https://images.unsplash.com/photo-1567465645848-b765281eca3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=952&q=80")
peace.save

snake_plant = PlantLibrary.new(name: "Snake Plant",water_freq_avg:10, description:"Similar to succulents, snake plants should become completely dry between waterings. During waterings, flood the plant and allow it drain and dry quickly. Also, this desert plant can tolerate lower light, but prefers direct sun.", image: "https://images.unsplash.com/photo-1565626929866-e11c64e607cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
snake_plant.save

fiddle_leaf= PlantLibrary.new(name: "Fiddle Leaf",water_freq_avg:10,description:"Water your fiddle leaf fig when the soil is dry 2” deep. And FYI, this plant likes to get dried out by the sun.", image: " https://images.unsplash.com/photo-1507746212228-2d3645cbeb56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=595&q=80
")
fiddle_leaf.save

spider_plant = PlantLibrary.new(name: "Spider Plant",water_freq_avg:6,description:"Water your spider plant when the soil is dry 2” deep.  This plant can tolerate moist soil. Like the peperomia, if it takes a while to dry out, it's not getting enough sunlight. ", image: "https://images.unsplash.com/photo-1524492367108-d2f94fdd0db0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
spider_plant.save

calathea = PlantLibrary.new(name: "Calathea",water_freq_avg:7,description:"Water your Calathea when the soil is dry 2” deep. Never mist this plantit's prone to foliar infections. It can, however, stand moist soil. Again, if it takes a while to dry out, it needs more light. ", image: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
calathea.save

citrus_tree = PlantLibrary.new(name: "Citrus Tree",water_freq_avg:6,description:"Citrus trees should be watered when the soil is completely dry 2” deep, or when they just start to wilt or the leaves begin to curl. If the soil takes longer to dry out, it’s in too low light or the wrong pot. Citrus roots like to dry out as fast as possible. For the best chance at keeping this plant alive, use a Terracotta pot. ", image: "https://images.unsplash.com/photo-1546066165-1976e440441b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
citrus_tree.save

orchid = PlantLibrary.new(name: "Orchid",water_freq_avg:5,description: "You should spritz your orchid daily, or every other day. Once a week, run warm water through your plant and let it soak for a few hours.  Pro tip: Orchids shouldn't be planted in sphagnum moss, it will rot them out. Use orchid bark mix instead. Lastly, this plant will thrive in a bathroom with windows. If yours does live in your bathroom, you can spritz it less often.",image: "https://images.unsplash.com/photo-1534885320675-b08aa131cc5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80
")
orchid.save

rubber_plant = PlantLibrary.new(name: "Rubber Plant",water_freq_avg:5,description:"Rubber plants need more water when the soil is dry 2” deep.  They like to get dried out between waterings." ,image: "https://images.unsplash.com/photo-1512951670161-b5c6c632b00e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80")
rubber_plant.save

philodendron = PlantLibrary.new(name: "Philodendron",water_freq_avg:8,description:"Water your philodendron when the soil is dry 2” deep. If the soil takes longer to dry out, it’s in too low light.", image: "https://images.unsplash.com/photo-1510505751526-76254482fd38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=951&q=8")
philodendron.save

ficus_tree = PlantLibrary.new(name: "Ficus Tree",water_freq_avg:5,description:"You should water your ficus when the soil is dry 2” deep. This plant likes to be dried out by the sun. ", image: "https://images.unsplash.com/photo-1507746212228-2d3645cbeb56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=595&q=80
")
ficus_tree.save

puts "Cool you created #{PlantLibrary.count} plants! You rock Sarah"

User.destroy_all

sarah = User.new(open_id: 1)

sarah.save

puts "Great , you created #{User.count} user"
