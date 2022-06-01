# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create!([{ name: 'Los Angeles International Airport', symbol: 'LAX' }, { name: 'John F. Kennedy International Airport', symbol: 'JFK'}, { name: 'San Francisco International Airport', symbol: 'SFO'}])

flights = Flight.create!([{ origin_id: 1, destination_id: 2, number: 'sw2940', date: 20220831, time: 200000 }])
