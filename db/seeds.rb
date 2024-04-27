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

first_attack = Post.create!(
  title: "Cookie's first time attacking me", 
  description: 'She really was just going for a hug', 
  mood: 'Angry', 
  date: Date.parse('2024-05-15'), 
  age: 1)

first_attack.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'first_attack.jpeg')), filename: 'first_attack.jpeg', content_type: 'image/jpeg')

bean_bag = Post.create!(
  title: "New Bed", 
  description: 'Cookie decided she would sleep on the bean bag instead of her bed', 
  mood: 'Sleepy', 
  date: Date.parse('2024-10-14'), 
  age: 1)

bean_bag.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'bean_bag.jpeg')), filename: 'bean_bag.jpeg', content_type: 'image/jpeg')

boyfriend = Post.create!(
  title: "Cookie meets her boyfriend", 
  description: 'Cookie would always watch the neighbors cat throught the window, but one day he came to visit', 
  mood: 'Happy', 
  date: Date.parse('2024-10-17'), 
  age: 1)

boyfriend.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'boyfriend.jpeg')), filename: 'boyfriend.jpeg', content_type: 'image/jpeg')

bat = Post.create!(
  title: "BAT CAT!", 
  description: 'For halloween I dressed Cookie up as a bat, she was not happy about it.', 
  mood: 'Angry', 
  date: Date.parse('2024-10-30'), 
  age: 1)

bat.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'bat.jpeg')), filename: 'bat.jpeg', content_type: 'image/jpeg')