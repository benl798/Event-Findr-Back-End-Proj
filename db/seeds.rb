# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


print "Creating Users..."
User.destroy_all

u1 = User.create!(
  name:'Ben',
  email: 'ben@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/200/300',
  longitude: -33.814871,
  latitude: 151.166435,
  account_type: 'Personal'
)

u2 = User.create!(
  name:'Chris',
  email: 'chris@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/400/200',
  longitude:151.206433,
  latitude: -33.864006,
  account_type: 'Personal'
)

u3 = User.create!(
  name:'General Assembly',
  email: 'ga@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/300',
  longitude: 151.2046,
  latitude: -33.8712,
  account_type: 'Business'
)

puts "Created #{ User.count } users:"

print "Creating Comments..."
Comment.destroy_all

c1 = Comment.create!(
  comment: 'Best experience ever!',
  image: 'https://www.fillmurray.com/g/200/100'
)

c2 = Comment.create!(
  comment: 'Definitely worth checking out!',
  image: 'https://www.fillmurray.com/g/300/100'
)

c3 = Comment.create!(
  comment: 'Was gone before we got here :(',
  image: 'https://www.fillmurray.com/g/400/300'
)

puts "Created #{ Comment.count } comments:"



print "Creating Posts..."
Post.destroy_all

p1 = Post.create!(
  title:'Red Bull Giveaway',
  description: 'Free cans!',
  image: 'https://www.fillmurray.com/g/400/150',
  latitude: -33.915127,
  longitude: 151.193738,
  post_visibility: true
)


p2 = Post.create!(
  title:'Dan Murphys free wine tasting!',
  description: 'Cheese too!',
  image: 'https://www.fillmurray.com/g/300/150',
  latitude: -31.938506,
  longitude: 115.856777,
  post_visibility: true
)

p3 = Post.create!(
  title:'Third event just as cool',
  description: 'Third even description',
  image: 'https://www.fillmurray.com/g/300/200',
  latitude: -31.938506,
  longitude: 115.856777,
  post_visibility: true
)

puts "Created #{ Post.count } posts:"

p1.comments << c1
p2.comments << c2 << c3

u1.comments << c1
u2.comments << c2
u3.comments << c3


u1.posts << p1
u2.posts << p2
