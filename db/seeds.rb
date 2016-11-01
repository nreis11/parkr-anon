# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = 25.times.map { City.create(name: Faker::Address.city) }
parks = cities.map {|city| 10.times.map {Park.create(name: Faker::Hipster.word.capitalize + " Park", description: Faker::Hipster.paragraph, city: cities.sample)} }
reviews = parks.map {|city_parks| city_parks.map {|park| 10.times.map{Review.create(title: Faker::Hipster.sentence(3), body: Faker::Hipster.paragraph, park: park)}}}g
