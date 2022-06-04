# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create!([{ name: 'Los Angeles International Airport', symbol: 'LAX' }, { name: 'John F. Kennedy International Airport', symbol: 'JFK'}, { name: 'San Francisco International Airport', symbol: 'SFO'}])

flights = Flight.create!([
          { origin_id: 1, destination_id: 2, number: 'sw2940', departure: DateTime.new(2022,8,31,2,2,2)},
          { origin_id: 1, destination_id: 3, number: 'sw2941', departure: DateTime.new(2022,8,31,4,6,2)},  
          { origin_id: 2, destination_id: 1, number: 'sw2942', departure: DateTime.new(2022,9,2,8,2,2)},
          { origin_id: 2, destination_id: 3, number: 'sw2943', departure: DateTime.new(2022,9,2,2,2,2)},
          { origin_id: 3, destination_id: 1, number: 'sw2944', departure: DateTime.new(2022,9,2,13,2,2)},
          { origin_id: 3, destination_id: 2, number: 'sw2945', departure: DateTime.new(2022,9,3,1,2,2)},
          { origin_id: 1, destination_id: 2, number: 'sw2946', departure: DateTime.new(2022,9,4,3,2,2)},
          { origin_id: 1, destination_id: 3, number: 'sw2947', departure: DateTime.new(2022,9,4,5,2,2)},
          { origin_id: 2, destination_id: 1, number: 'sw2948', departure: DateTime.new(2022,9,5,4,2,2)},
          { origin_id: 2, destination_id: 3, number: 'sw2949', departure: DateTime.new(2022,9,7,7,2,2)},
          { origin_id: 3, destination_id: 1, number: 'sw2950', departure: DateTime.new(2022,10,8,4,2,2)},
          { origin_id: 3, destination_id: 2, number: 'sw2951', departure: DateTime.new(2022,10,8,5,2,2)},
          { origin_id: 1, destination_id: 2, number: 'sw2952', departure: DateTime.new(2022,10,9,6,2,2)}])
