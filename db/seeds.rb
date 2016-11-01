cities = 25.times.map { City.create(name: Faker::Address.city) }

parks = cities.map {|city| 10.times.map {Park.create(name: Faker::Hipster.word.capitalize + " Park", description: Faker::Hipster.paragraph, city: cities.sample)} }

reviews = parks.map {|city_parks| city_parks.map {|park| 10.times.map{Review.create(title: Faker::Hipster.sentence(3), body: Faker::Hipster.paragraph, park: park)}}}
