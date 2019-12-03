# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlantLibrary.destroy_all

succulents = PlantLibrary.new(name: "succulents",water_freq_avg:10, image: "https://images.unsplash.com/photo-1513358130276-442a18340285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1934&q=80")
succulents.save

aloe = PlantLibrary.new(name: "aloe plant",water_freq_avg:10, image: "https://images.unsplash.com/photo-1480585532350-07e43e6eb63f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1059&q=80")
aloe.save

peace = PlantLibrary.new(name: "peace lily",water_freq_avg:6, image: "https://images.unsplash.com/photo-1567465645848-b765281eca3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=952&q=80")
peace.save


puts "Cool you created #{PlantLibrary.count}! You rock Sarah"
