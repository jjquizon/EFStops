# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'jquizon', email: "jquizon@hi.com", password: "jquizon")
User.create(username: 'tanK', email: "tank@hi.com", password: "tankkk")
User.create(username: 'rcberserk', email: "rcberserk@hi.com", password: "rcberserk")
User.create(username: 'reyjey', email: "reyjeyC@hi.com", password: "reyjey")
User.create(username: 'cajucom', email: "cajucom@hi.com", password: "cajucom")
User.create(username: 'valimerie', email: "valimerie@hi.com", password: "valimerie")
User.create(username: 'abittooslow', email: "abittooslow@hi.com", password: "abittooslow")
User.create(username: 'phantom', email: 'phantom@hi.com', password: 'phantom')
User.create(username: 'w1t3wash3d', email: 'w1t3wash3d@hi.com', password: 'w1t3wash3d')
User.create(username: 'tyromaniac', email: 'tyromaniac@hi.com', password: 'tyromaniac')
User.create(username: 'vivlaviv', email: "vivlaviv@hi.com", password: 'vivlaviv')
User.create(username: 'smelliemellie', email: 'smelliemellie@hi.com', password: 'smelliemellie')


Album.create(title: "Nature", description: "I love nature", user_id: "1")
Album.create(title: "Birthdays", description: "I love birthdays", user_id: "2")
Album.create(title: "Trees", description: "I love trees", user_id: "2")
Album.create(title: "Mountains", description: "I love mountains", user_id: "1")
Album.create(title: "Sunsets", description: "I love sunsets", user_id: "4")
Album.create(title: "Food", description: "I love food", user_id: "5")
Album.create(title: "Cars", description: "I love cars", user_id: "6")
Album.create(title: "Sports", description: "I love sports", user_id: "3")
Album.create(title: "Cultural", description: "I love cultural stuff", user_id: "7")
Album.create(title: "Music", description: "I love music", user_id: "1")
Album.create(title: "Activities", description: "I love fun", user_id: "4")

Comment.create(content: "I love nature", commentable_id: 1, commentable_type:  "Album", user_id: 1)
Comment.create(content: "I love nature", commentable_id: 1, commentable_type:  "Album", user_id: 1)
Comment.create(content: "I love nature", commentable_id: 1, commentable_type:  "Album", user_id: 1)
Comment.create(content: "I love nature", commentable_id: 1, commentable_type:  "Album", user_id: 1)
Comment.create(content: "I love nature", commentable_id: 1, commentable_type:  "Album", user_id: 1)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love birthdays", commentable_id: 2, commentable_type:  "Album", user_id: 2)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)
Comment.create(content: "I love trees", commentable_id: 3, commentable_type:  "Album", user_id: 3)



Image.create(title: "Bungee Jumping", description: "Bungee Man", image_tag: "Sports", album_id: 11,
  image_url: "https://farm4.staticflickr.com/3868/14247501538_385f6c589f_b.jpg"
)


Image.create(title: "Kain", description: "The Dragoon", image_tag: "Art", album_id: 9,
  image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/1004863_10202619680506584_359625154_n.jpg?oh=d3b793e038b280bd158192748e546e0f&oe=54BCCE5B"
)


Image.create(title: "Delores Park", description: "Delores Park in the Mission", image_tag: "Travel", album_id: 9,
  image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-prn2/v/t1.0-9/530555_4128649407936_1037444660_n.jpg?oh=96b84dcd1654577798a6bf1096597563&oe=5488F394"
)


Image.create(title: "Delorean", description: "Back to the Future", image_tag: "Automobiles", album_id: 7,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/p417x417/480274_10200280855317416_839159410_n.jpg?oh=196c57eda58a05133c6196670d67bfe4&oe=54C8AE6C&__gda__=1418414098_1899dfde6ec8809498ccf2694261f8ee"
)


Image.create(title: "After Work", description: "Sunset", image_tag: "Nature", album_id: 5,
  image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/988776_10201690330513415_1989668018_n.jpg?oh=994b3c2baef82a20c115b601d1ac9432&oe=54C7FC62&__gda__=1417986618_6041da096f9e08f579c02fcef0b26ce4"
)


Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)


Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)


Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)


Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)

Image.create(title: "Pulled Pork Benedict Hash", description: "From Brenda's Soul Food in the Tenderloin, SF", image_tag: "Food", album_id: 6,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1422609_10201860675251927_1680074502_n.jpg?oh=383e88e5f1ca1af9202bb6ca1f37ffe7&oe=54C34060&__gda__=1418316986_1acd6b12c0f90119395185bd98d6dfd1"
)



Image.create(title: "Petco Park", description: "Petco Park in San Diego, CA", image_tag: "Sports", album_id: 11,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/5988_10200586512438653_1323939480_n.jpg?oh=a651ac7f290f020ae638e16e931ef2a5&oe=548D2EBB&__gda__=1418582216_f9e023d21c20c3bae5102bcb994f77cc"
)

Image.create(title: "Calvin Harris", description: "Calvin Harris performing at Club XS", image_tag: "Music", album_id: 10,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/p417x417/418625_4102534115070_866262262_n.jpg?oh=c3ec4166a5e49468a62a30c6a8b58d25&oe=54B93EF2&__gda__=1421920902_3b3674885e75857d359f2c8016844170"
)

Comment.create(content: "I love bungee jumping", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I love bungee jumping", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I love bungee jumping", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I love bungee jumping", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I love Kain", commentable_id: 2, commentable_type:  "Image", user_id: 5)
Comment.create(content: "I love Kain", commentable_id: 2, commentable_type:  "Image", user_id: 5)
Comment.create(content: "I love Kain", commentable_id: 2, commentable_type:  "Image", user_id: 5)
Comment.create(content: "I love Kain", commentable_id: 2, commentable_type:  "Image", user_id: 5)
Comment.create(content: "I love Kain", commentable_id: 2, commentable_type:  "Image", user_id: 5)
Comment.create(content: "I love Delores Park", commentable_id: 3, commentable_type:  "Image", user_id: 6)
Comment.create(content: "I love Delores Park", commentable_id: 3, commentable_type:  "Image", user_id: 6)
Comment.create(content: "I love Delores Park", commentable_id: 3, commentable_type:  "Image", user_id: 6)
Comment.create(content: "I love Delores Park", commentable_id: 3, commentable_type:  "Image", user_id: 6)
Comment.create(content: "I love Delores Park", commentable_id: 3, commentable_type:  "Image", user_id: 6)


Follow.create(follower_id: 1, followed_id: 1)
Follow.create(follower_id: 1, followed_id: 2)
Follow.create(follower_id: 1, followed_id: 3)
Follow.create(follower_id: 1, followed_id: 4)
Follow.create(follower_id: 1, followed_id: 5)
Follow.create(follower_id: 1, followed_id: 6)
Follow.create(follower_id: 1, followed_id: 7)
Follow.create(follower_id: 1, followed_id: 8)
Follow.create(follower_id: 1, followed_id: 9)
Follow.create(follower_id: 1, followed_id: 10)
Follow.create(follower_id: 5, followed_id: 1)
Follow.create(follower_id: 6, followed_id: 1)
Follow.create(follower_id: 7, followed_id: 1)
Follow.create(follower_id: 8, followed_id: 2)
Follow.create(follower_id: 3, followed_id: 2)
Follow.create(follower_id: 5, followed_id: 2)
Follow.create(follower_id: 4, followed_id: 2)

Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 1)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 2)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 3)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 4)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 5)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 6)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 7)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 8)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 9)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 10)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 11)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 12)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 13)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 14)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 15)
Favorites.create(user_id: 1, favoritable_type: "Image", favoritable_id: 16)
