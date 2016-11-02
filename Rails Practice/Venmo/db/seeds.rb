# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new

if Rails.env == "staging"
    user.name = "Staging Name"
    user.save
elsif Rails.env == "production"
    user.name = "Production Name"
    user.save
elsif Rails.env == "development"
    user.name = "Development Name"
    user.save
else
    puts "Error. Development environment didn't match any of the conditions."
end
