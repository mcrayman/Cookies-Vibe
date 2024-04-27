# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
first_day = Post.create!(
  title: "Cookie's first day home", 
  description: 'The first day I brought home Cookie', 
  mood: 'Happy', 
  date: Date.parse('2024-05-14'), 
  age: 1)

first_day.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'first_day.jpeg')), filename: 'first_day.jpeg', content_type: 'image/jpeg')