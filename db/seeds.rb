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
  longitude: 151.166435,
  latitude: -33.814871,
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

u2 = User.create!(
  name:'Chris',
  email: 'chris@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/400/200',
  longitude:151.206433,
  latitude: -33.864006,
  account_type: 'Personal'
)

u4 = User.create!(
  name:'Danny',
  email: 'danny@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/500/200',
  longitude:151.193583,
  latitude: -33.823444,
  account_type: 'Personal'
)

u5 = User.create!(
  name:'Luke',
  email: 'luke@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/400',
  longitude:151.183102,
  latitude: -33.796076,
  account_type: 'Personal'
)

u6 = User.create!(
  name:'Zara',
  email: 'zara@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/300',
  longitude:151.17119,
  latitude: -33.78903,
  account_type: 'Personal'
)

u7 = User.create!(
  name:'Jam',
  email: 'jam@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/500/200',
  longitude:151.169418,
  latitude: -33.77567,
  account_type: 'Personal'
)

u8 = User.create!(
  name:'Nemo',
  email: 'goat@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/500/400',
  longitude:151.169418,
  latitude: -33.77567,
  account_type: 'Personal'
)

u9 = User.create!(
  name:'Purvis',
  email: 'purvis@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/400',
  longitude:151.274291,
  latitude: -33.890844,
  account_type: 'Personal'
)

u10 = User.create!(
  name:'Karthik',
  email: 'karthik@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/200/400',
  longitude:151.2184,
  latitude: -33.8345,
  account_type: 'Personal'
)

u11 = User.create!(
  name:'Robbie',
  email: 'robbie@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/200/500',
  longitude:150.691047,
  latitude: -33.752179,
  account_type: 'Personal'
)

u12 = User.create!(
  name:'Ryan',
  email: 'ryan@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/500',
  longitude:151.20733,
  latitude: -33.870846,
  account_type: 'Personal'
)

u13 = User.create!(
  name:'Swaroop',
  email: 'swaroop@ga.com',
  password: 'chicken',
  image: 'https://www.fillmurray.com/g/300/500',
  longitude:151.003155,
  latitude: -33.815129,
  account_type: 'Personal'
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

c4 = Comment.create!(
  comment: 'Have fun guys! Looks great from here!',
)

c5 = Comment.create!(
  comment: 'Dang it! Just missed this!',
)
c6 = Comment.create!(
  comment: 'This was so much fun! Cant wait to be back!',
)
c7 = Comment.create!(
  comment: 'Wasnt the best experience ever...',
)
c8 = Comment.create!(
  comment: 'My friends and I loved this!',
)
c9 = Comment.create!(
  comment: 'How much fun was this?!',
)
c10 = Comment.create!(
  comment: 'Was gone before we got here :(',
  image: 'https://www.fillmurray.com/g/400/300'
)
c11 = Comment.create!(
  comment: 'Wasnt the best weather but apart from that this was awesome!',
)
c12 = Comment.create!(
  comment: 'It was so busy I couldnt get a seat... Maybe next time?',
)
c13 = Comment.create!(
  comment: 'My family and I loved this, I would definitely recommend this to anyone and everyone!',
)
c14 = Comment.create!(
  comment: 'Wasnt worth waiting around all day for...',
)
c15 = Comment.create!(
  comment: 'Experience of a lifetime!',
)


puts "Created #{ Comment.count } comments:"



print "Creating Posts..."
Post.destroy_all

p1 = Post.create!(
  title:'Red Bull Giveaway',
  description: 'Free cans!',
  image: 'https://vice-images.vice.com/images/content-images-crops/2016/07/21/some-people-want-to-ban-energy-drinks-for-under-16s-vgtrn-body-image-1469103896-size_1000.jpg?resize=*:*&output-quality=75',
  latitude: -33.915127,
  longitude: 151.193738,
  post_visibility: true
)


p2 = Post.create!(
  title:'Dan Murphys free wine tasting!',
  description: 'Cheese too!',
  image: 'https://i.dailymail.co.uk/i/pix/2014/10/14/1413326827214_wps_13_BXDEHC_Young_people_raisi.jpg',
  latitude: -33.801028,
  longitude: 151.198869,
  post_visibility: true
)

p3 = Post.create!(
  title:'Parkour - If youre brave enough?',
  description: 'Come down and have a run around with us.',
  image: 'https://i.ytimg.com/vi/5XcwWJhNTPE/maxresdefault.jpg',
  latitude: -33.808859,
  longitude: 151.184795,
  post_visibility: true
)

p4 = Post.create!(
  title:'Drive Through Movies!',
  description: 'Oh my god you wouldnt believe it but theyre playing Toy Story the original here! Get down here now!',
  image: 'http://kclr96fm.com/media/2016/05/Drive-In-Cinema-.jpg',
  latitude: -33.797001,
  longitude: 151.184201,
  post_visibility: true
)

p5 = Post.create!(
  title:'Free axe throwing competition!',
  description: 'Fair warning to all, my aim is slightly off after 10 beers...',
  image: 'https://www.gannett-cdn.com/-mm-/1fecae5856e58374cc9e1c0fd6dcc3c6aae79d4e/c=0-293-5760-3547/local/-/media/2017/05/23/INGroup/Indianapolis/636311496324307184-Axe-Throwing-in-Style.jpg?width=3200&height=1680&fit=crop',
  latitude: -33.813943,
  longitude: 151.148891,
  post_visibility: true
)

p6 = Post.create!(
  title:'Free McDonalds Cheesebugers! ',
  description: 'Could there be a better day to be alive guys?!',
  image: 'https://static-secure.guim.co.uk/sys-images/Guardian/Pix/pictures/2014/5/31/1401541093634/Children-eating-McDonalds-014.jpg',
  latitude: -33.829732,
  longitude: 151.226791,
  post_visibility: true
)

p7 = Post.create!(
  title:'Friday Flower Markets',
  description: 'Come join me and the gang and pick out your favourite roses, tulips and lillys.',
  image: 'https://greenweddingshoes.com/wp-content/uploads/2014/07/GWSFlowerMart_KatiePritchardWEB-28.jpg',
  latitude: -33.805229,
  longitude: 151.199361,
  post_visibility: true
)

p8 = Post.create!(
  title:'Red Hot Chilli Peppers Concert!',
  description: 'One of the best bands ever, do I need to say anymore? Get over here!',
  image: 'https://api.time.com/wp-content/uploads/2016/09/red-hot-chili-peppers-tour-2017.jpg',
  latitude: -33.795558,
  longitude: 151.183106,
  post_visibility: true
)

puts "Created #{ Post.count } posts:"

p1.comments << c1 << c4 << c12 << c15
p2.comments << c2 << c3 << c16
p3.comments << c5 << c11 << c17
p4.comments << c6 << c13 << c14
p5.comments << c7 << c8 << c9

u1.comments << c1
u2.comments << c2
u3.comments << c3
u4.comments << c4
u5.comments << c5
u6.comments << c6
u7.comments << c7
u8.comments << c8 << c15
u9.comments << c9 << c14
u10.comments << c10 << c13
u11.comments << c11 << c12
u12.comments << c16
u13.comments << c17


u1.posts << p1
u2.posts << p2
u3.posts << p3
u4.posts << p4
u5.posts << p5
u6.posts << p6
u7.posts << p7
u8.posts << p8


l1 = Like.create!(
  user: u1,
  post: p1,
  status: 'like'
)

l2 = Like.create!(
  user: u1,
  post: p2,
  status: 'dislike'
)

l3 = Like.create!(
  user: u2,
  post: p2,
  status: 'like'
)

l4 = Like.create!(
  user: u2,
  post: p1,
  status: 'dislike'
)

l5 = Like.create!(
  user: u3,
  post: p1,
  status: 'like'
)

l6 = Like.create!(
  user: u3,
  post: p2,
  status: 'dislike'
)

l7 = Like.create!(
  user: u4,
  post: p1,
  status: 'like'
)

l8 = Like.create!(
  user: u4,
  post: p3,
  status: 'like'
)

l9 = Like.create!(
  user: u4,
  post: p4,
  status: 'like'
)

l10 = Like.create!(
  user: u4,
  post: p2,
  status: 'like'
)

l11 = Like.create!(
  user: u5,
  post: p2,
  status: 'dislike'
)
l12 = Like.create!(
  user: u5,
  post: p5,
  status: 'dislike'
)
l13 = Like.create!(
  user: u5,
  post: p1,
  status: 'like'
)

l14 = Like.create!(
  user: u6,
  post: p2,
  status: 'like'
)

l15 = Like.create!(
  user: u6,
  post: p1,
  status: 'dislike'
)

l16 = Like.create!(
  user: u6,
  post: p4,
  status: 'like'
)

l17 = Like.create!(
  user: u6,
  post: p3,
  status: 'like'
)

l18 = Like.create!(
  user: u7,
  post: p2,
  status: 'like'
)

l19 = Like.create!(
  user: u7,
  post: p3,
  status: 'dislike'
)

l20 = Like.create!(
  user: u7,
  post: p2,
  status: 'like'
)

l21 = Like.create!(
  user: u8,
  post: p5,
  status: 'like'
)

l22 = Like.create!(
  user: u8,
  post: p2,
  status: 'like'
)

l23 = Like.create!(
  user: u8,
  post: p1,
  status: 'like'
)

l24 = Like.create!(
  user: u8,
  post: p4,
  status: 'like'
)

l25 = Like.create!(
  user: u9,
  post: p5,
  status: 'like'
)

l26 = Like.create!(
  user: u9,
  post: p6,
  status: 'like'
)

l27 = Like.create!(
  user: u9,
  post: p3,
  status: 'dislike'
)

l28 = Like.create!(
  user: u9,
  post: p1,
  status: 'like'
)

l29 = Like.create!(
  user: u10,
  post: p2,
  status: 'like'
)

l30 = Like.create!(
  user: u10,
  post: p5,
  status: 'like'
)

l31 = Like.create!(
  user: u10,
  post: p4,
  status: 'dislike'
)

l32 = Like.create!(
  user: u11,
  post: p1,
  status: 'like'
)

l6 = Like.create!(
  user: u11,
  post: p2,
  status: 'like'
)
