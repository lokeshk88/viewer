# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


User.delete_all
#User datasets
puts "Users datasets creating...\n\n"
50.times do |i|
  User.create(
  	ip: Faker::Internet.ip_v4_address, 
    username: Faker::Internet.username
  	)
   
end


