# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

#User datasets
puts "Users datasets created..."
50.times do |i|
  user = User.create!(
  	username: Faker::Internet.username ,
  	ip: Faker::Internet.ip_v4_address 
  	)
    puts "USER-#{i} -> #{user.username}:[#{user.ip}]"
end


