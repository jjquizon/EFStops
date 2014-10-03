# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'jquizon', email: "jquizon@hi.com", password: "jquizon", avatar_url: "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xfp1/v/t1.0-9/1396048_10201592362424274_632604963_n.jpg?oh=77d52c90edd213ad0da0ddc7ae18c71a&oe=54D0BC0C&__gda__=1421477974_df5f20c810c516934523209fac0465a8")
User.create(username: 'tanK', email: "tank@hi.com", password: "tankkk", avatar_url: "http://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/71/711a3603108b2c0873940ca27e1a69fb4fb465b2_full.jpg")
User.create(username: 'rcberserk', email: "rcberserk@hi.com", password: "rcberserk", avatar_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-frc3/v/t1.0-9/581567_10100519812069308_26755988_n.jpg?oh=b378cefdf60aa6fc65221c3065400a2c&oe=54B7902C")
User.create(username: 'reyjey', email: "reyjeyC@hi.com", password: "reyjey", avatar_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/528636_10100686107227478_612758958_n.jpg?oh=f8efc4ff0c2c2b475c5c7edc69318a52&oe=54BD164A")
User.create(username: 'cajucom', email: "cajucom@hi.com", password: "cajucom", avatar_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/20134_836475898464_2522320_n.jpg?oh=eac8c2a399fe0a0f4fbf0ad53d08a4b0&oe=54B8437C&__gda__=1421466959_f017c1b10ac79e0fcd323f02d9d8965d")
User.create(username: 'valimerie', email: "valimerie@hi.com", password: "valimerie", avatar_url: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpf1/t31.0-8/10298565_10202743011989935_4882649833431066738_o.jpg")
User.create(username: 'abittooslow', email: "abittooslow@hi.com", password: "abittooslow", avatar_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/251417_10100404568857594_2361425_n.jpg?oh=d17cb876c524a6d12a50e3fd5d916c79&oe=5483E89F&__gda__=1422000161_83b22214368aa293fa27212688dd9b4f")
User.create(username: 'phantom', email: 'phantom@hi.com', password: 'phantom', avatar_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpf1/t31.0-8/s960x960/332894_10100672773114114_1054532585_o.jpg")
User.create(username: 'w1t3wash3d', email: 'w1t3wash3d@hi.com', password: 'w1t3wash3d', avatar_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/10690263_10102636240459814_7980602728859823123_n.jpg?oh=62fe28da2b8404a48864670a5f29315f&oe=54CFF215")
User.create(username: 'tyromaniac', email: 'tyromaniac@hi.com', password: 'tyromaniac', avatar_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-prn2/v/t1.0-9/540616_10150811664266469_1104749165_n.jpg?oh=d8792ed33d98942f3de54f37ccf8ace2&oe=54C8D2FD")
User.create(username: 'vivlaviv', email: "vivlaviv@hi.com", password: 'vivlaviv', avatar_url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xaf1/t31.0-8/s960x960/1008249_10151640150789076_2072035995_o.jpg")
User.create(username: 'smelliemellie', email: 'smelliemellie@hi.com', password: 'smelliemellie', avatar_url: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xfa1/t31.0-8/210386_1785766157226_12607_o.jpg")


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
Album.create(title: "Dogs", description: "I love dogs", user_id: 1)
Album.create(title: "Disneyland!", description: "I love disneyland", user_id: 11)
Album.create(title: "Wedding", description: "I love weddings", user_id: 3)
Album.create(title: "LA", description: "I love LA", user_id: 1)



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

Image.create(title: "Petco Park", description: "Petco Park in San Diego, CA", image_tag: "Sports", album_id: 11,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/5988_10200586512438653_1323939480_n.jpg?oh=a651ac7f290f020ae638e16e931ef2a5&oe=548D2EBB&__gda__=1418582216_f9e023d21c20c3bae5102bcb994f77cc"
)

Image.create(title: "Calvin Harris", description: "Calvin Harris performing at Club XS", image_tag: "Music", album_id: 10,
  image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/p417x417/418625_4102534115070_866262262_n.jpg?oh=c3ec4166a5e49468a62a30c6a8b58d25&oe=54B93EF2&__gda__=1421920902_3b3674885e75857d359f2c8016844170"
)

Image.create(title: "Bridge to Nowhere", description: "River beneath Bridge to Nowhere", image_tag: "Nature", album_id: 1,
  image_url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/p417x417/10426591_10203135881811294_5304865730873219503_n.jpg?oh=cc9dd6810f16aa7c9ad84895e735a15f&oe=54B0FCDA&__gda__=1422637004_f88791ebe97e9d8a87fd6b2aae423d9e"
)

Image.create(title: "DODGERS!", description: "Filipino Herritage Night @ Dodgers Stadium", image_tag: "Sports", album_id: 9,
image_url: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/10469221_10203125268545969_5803715795469186161_n.jpg?oh=17a9ff4a8218f27b93ab0c0f0fcd8fd8&oe=54B6845B&__gda__=1421414158_b3cf48f0475ac1f3a41177101ef94b90"
)


Image.create(title: "Dogggggie", description: "So cute!", image_tag: "Animals", album_id: 12,
image_url: "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/p417x417/10448196_10203135881971298_7220303387391145382_n.jpg?oh=d07c45a13ab103ece5165d722a5d901b&oe=54BB2140&__gda__=1422436021_4b83e463618bdd62910320afde59ae89"
)


Image.create(title: "Hermit Falls", description: "Graffiti :(", image_tag: "Nature", album_id: 1,
image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xpa1/v/t1.0-9/10439490_10203085287986480_4007942882590568427_n.jpg?oh=5773614304b33115ce28113e479f43ce&oe=54C1BCB4"
)


Image.create(title: "Hiking!", description: "Santa Anita Big Loop", image_tag: "Mountains", album_id: 4,
image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/10372356_10203045957603245_7422470971408560168_n.jpg?oh=c0762e8bd62bf666541b29a1308fadbd&oe=54CEEDA8"
)

Image.create(title: "Fireworks!", description: "So pretty", image_tag: "Photography", album_id: 11,
image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/10171082_10202669122222596_814056933421165997_n.jpg?oh=97a301b55955875fe4d159f162e9b527&oe=54B655D9&__gda__=1421266400_53463aea0edd21d0cf5aca0a6353b5a9"
)

Image.create(title: "Splash Mountain", description: "Looks different at night", image_tag: "Travel", album_id: 13,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10177426_10202669123782635_2458642058806601492_n.jpg?oh=e3d6193ee12af0815f230e2a010a02dd&oe=54CA103A"
)

Image.create(title: "Popcorn Chicken", description: "at Guppies", image_tag: "Food", album_id: 6,
image_url: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/1904150_10202507901152170_303176461_n.jpg?oh=19caae86130c9569194ee1d40058b786&oe=54CE16CC&__gda__=1422802577_9135d04724f87ebbf1a90352c6938d90"
)

Image.create(title: "Sliders", description: "SO GOOD!", image_tag: "Food", album_id: 6,
image_url: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/968815_10200864316703586_1840964532_n.jpg?oh=6ab66823125f7b540a0feb7e9e56ceb4&oe=54C08FB7&__gda__=1421914090_0f41e9df848d6df360b57163b9faf943"
)

Image.create(title: "4th of July", description: "Fireworks from down the street", image_tag: "Art", album_id: 9,
image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/934994_10200864330183923_29180480_n.jpg?oh=ad8bfbb4279bbeda6e5d735d082503fa&oe=54D08C9D&__gda__=1420893772_211154adb00db7674e77b3f8033c1e79"
)

Image.create(title: "The Vine", description: "in Niles", image_tag: "Travel", album_id: 11,
image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash2/v/t1.0-9/p417x417/993615_10200864185420304_1213144696_n.jpg?oh=10eed8e2bc7b270c863695fb62a13369&oe=54C28536&__gda__=1418009146_5f3cc8725e366f74109c90d2e97abff4"
)

Image.create(title: "Bride and Groom", description: "Hand in hand", image_tag: "Wedding", album_id: 14,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/1005311_10200864204700786_943413931_n.jpg?oh=5d75c472b0f710e3b8fa38cd73710d67&oe=54C90F90"
)

Image.create(title: "LA", description: "near Pershing Square", image_tag: "Architecture", album_id: 15,
image_url: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/17815_10200372757894923_82878295_n.jpg?oh=839b2099af46f3443fd3f721b6bf76a4&oe=54CF2592&__gda__=1421787006_fe2b55d2ec5b0f25336bc95cb96fad8e"
)

Image.create(title: "Genesis Coupe", description: "Genesis @ sunset", image_tag: "Automobiles", album_id: 7,
image_url: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xfa1/v/t1.0-9/181139_4781623251874_566553905_n.jpg?oh=d202b596071aada27456bb059c388435&oe=54B77FE6&__gda__=1421661742_ef259ee4397a5f9745062e6209697f06"
)

Image.create(title: "Genesis Coupe", description: "Another shot", image_tag: "Automobiles", album_id: 7,
image_url: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/149369_4787377115717_1735014229_n.jpg?oh=3f40d0255534697170817355a77ce51f&oe=54B29C27&__gda__=1422600215_f2986c4cf60527ca85294f124f94a1ca"
)

Image.create(title: "Peacock", description: "in Arcadia, CA", image_tag: "Animals", album_id: 9,
image_url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/p417x417/603632_10200601609736076_1377111716_n.jpg?oh=6a29ffc55f6bd59a41b73756eecd250d&oe=54BE6D30&__gda__=1421640684_037aded03134eb5b92f231cecc1fca39"
)

Image.create(title: "Kirk", description: "got out", image_tag: "Sports", album_id: 8,
image_url: "https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1504090_10202682635440418_8506011656859759795_n.jpg?oh=4684ea3b8fed61a4612684ceb2e822b5&oe=54C04874&__gda__=1420799309_6c5868151ab69e215ea57f156cfb79eb"
)

Image.create(title: "Jeff", description: "got a home run", image_tag: "Sports", album_id: 8,
image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/p417x417/10246235_10202682647560721_4179139708639532087_n.jpg?oh=1f5c4c40d2741f69625e5f1513254f30&oe=54BA355D&__gda__=1422874342_503f9244663f51a43ee4da32cb550557"
)

Image.create(title: "Trees", description: "Tree line while hiking", image_tag: "Nature", album_id: 1,
image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10371911_10203045942602870_6100514137009935523_n.jpg?oh=3946fcec7aa6e13f299055879917b436&oe=54BDDEF3"
)

Image.create(title: "Lake", description: "Lake near Yosemite, CA", image_tag: "Nature", album_id: 1,
image_url: "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/p417x417/10307434_10203007517682271_1154315366405601363_n.jpg?oh=71d87c79d8c9e2eac869f6b1ddde2415&oe=54B38655&__gda__=1422451438_b0abb458fc7aa33eb0963172f470aad1"
)

Image.create(title: "Soarin', Flyin'", description: "Screaming, CA", image_tag: "Travel", album_id: 13,
image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/p417x417/10004056_10202716117357445_5521585616643154388_n.jpg?oh=f8a79d7f4c816a6924504e41bb44b955&oe=54C375E5"
)

Image.create(title: "Wonderful World of Color", description: "World of Color, DCA", image_tag: "Travel", album_id: 13,
image_url: "https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/p480x480/10154011_10202716127277693_366867179197971202_n.jpg?oh=7c0a2985f88918802cb648bd261b9e97&oe=54B88F56&__gda__=1422901245_53da47f3342b10e0c717b6d24cb40320"
)

Image.create(title: "Walt and Mouse", description: "Walt Disney statue at Disneyland", image_tag: "Travel", album_id: 13,
image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/p480x480/1554527_10202716128157715_2863431124379893486_n.jpg?oh=c73dc0f793d07826f6e28ee6b8bccb74&oe=54C1264E&__gda__=1422932965_4013e7e063192983bf48f16f42fed006"
)

Image.create(title: "Magic Castle", description: "Magic Castle at Disneyland", image_tag: "Travel", album_id: 13,
image_url: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/s720x720/1016979_10202716127437697_6526186774483132286_n.jpg?oh=9e64fada5326eb9ff2e6ec214dd3a777&oe=54BAF483&__gda__=1420939334_486609f67f60952c2e74b04b5e6a4a61"
)

Image.create(title: "Nightscape", description: "Long shutter", image_tag: "Photography", album_id: 1,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10268503_10203007492761648_3486946508984730288_n.jpg?oh=9216b55dc6d9eb0f543279d87d61fda3&oe=54B8B609"
)

Image.create(title: "Churros!", description: "Churros are awesome", image_tag: "Food", album_id: 15,
image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/1458617_10202669113342374_1877384820909493480_n.jpg?oh=0a359bd87fc936c2fadbab67c44f06a6&oe=54BDC59C&__gda__=1421849078_b89ee3163fda22e37920bcc85d652089"
)

Image.create(title: "Balloons", description: "Balloon man", image_tag: "Travel", album_id: 13,
image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/10153096_10202669115342424_842219817609856441_n.jpg?oh=8285dbaed0340f4d04c40c0b50dc1d98&oe=54BF25C7&__gda__=1421667501_86720a3a02db219726f2ed3fddfd5791"
)

Image.create(title: "Offtrail Hiking", description: "This really hurt to get here", image_tag: "Nature", album_id: 4,
image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/10403455_10203007511242110_665828030417899682_n.jpg?oh=3bfe4d67f43bc153646adff5e2303501&oe=54C308DE&__gda__=1422458593_e7e963a270c0221c456aecb91edaffec"
)

Image.create(title: "Lake", description: "Lake at the end of May", image_tag: "Nature", album_id: 4,
image_url: "https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/10322817_10203007511722122_3142228496870092644_n.jpg?oh=c641abfd1b291e50c13b45b614ac07ec&oe=54AEE49A&__gda__=1421881740_ade70aff771f5ace9c0d867e6412df86"
)

Image.create(title: "Tebowing", description: "on Potato Chip Rock", image_tag: "Funny", album_id: 11,
image_url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xaf1/v/t1.0-9/p417x417/1959615_10202382549858466_1250131666_n.jpg?oh=fedfc051147d6c764be0d9031ba024db&oe=54C55EAA&__gda__=1418074653_2b2f7d73fb8db65dc5bb5ae54d65c388"
)

Image.create(title: "SF Heart", description: "Union Square", image_tag: "Art", album_id: 9,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/1391499_10201511556684181_1367959897_n.jpg?oh=0c2b24a1ce4530c314b0df349e2fe1b4&oe=54BD7539"
)

Image.create(title: "Niners", description: "49ers vs Cardinals", image_tag: "Sports", album_id: 8,
image_url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1385360_10201511559764258_2054328371_n.jpg?oh=d680f41bbfa90c39baab2a8c60eef77a&oe=54C5BBBF&__gda__=1420780901_13aa5a466065c209338658610f64bb45"
)

Image.create(title: "Touchdown!", description: "TD Vernon Davis", image_tag: "Sports", album_id: 8,
image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1385666_10201511565564403_1289938155_n.jpg?oh=c935b4e544cd566d926ab5c66686a0b3&oe=548267BF&__gda__=1421725541_04def800671e1a52ecd1b0dc5a6debc1"
)

Image.create(title: "Penalty", description: "Illegal Hands to the face", image_tag: "Sports", album_id: 8,
image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpa1/v/t1.0-9/1377127_10201511570124517_485704908_n.jpg?oh=144989131128805925248674252102de&oe=54CA8529&__gda__=1417934066_802159745b6f9aed822b1e93c15d388d"
)

Image.create(title: "Bay Bridge", description: "at night", image_tag: "Architecture", album_id: 9,
image_url: "https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-xpf1/v/t1.0-9/968969_10200565858522318_1219536792_n.jpg?oh=8ccef0a0fe7730d6f1727e871cc0ece9&oe=54B3CD21&__gda__=1422227324_7d5bae064911a6c5c5cd1b75becb6f96"
)

Image.create(title: "Grand Park LA", description: "City Hall", image_tag: "Architecture", album_id: 15,
image_url: "https://scontent-b-sjc.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/486447_10200292405046152_1548202660_n.jpg?oh=065a5d6ab6802792a3cea8d40aaf0158&oe=54B4CA47"
)

Image.create(title: "Fountain", description: "at the Grand Park", image_tag: "Architecture", album_id: 15,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/63056_10200292405726169_428172505_n.jpg?oh=5298f6a9ab65f98b4bebe0eb0286e1a5&oe=54BC3498"
)

Image.create(title: "Griffith Observatory", description: "Griffith Park", image_tag: "Architecture", album_id: 15,
image_url: "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-prn2/v/t1.0-9/63249_10200191987575778_1715240787_n.jpg?oh=ede1df79b7d991953fc41b87c3eaffe5&oe=54BC092B&__gda__=1417877633_c973a75605c6d566d2be840a149dd897"
)

Image.create(title: "Sunset", description: "Cliffs at La Jolla", image_tag: "Nature", album_id: 5,
image_url: "https://scontent-a-sjc.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/316857_2379222553358_83930272_n.jpg?oh=0fcdf8228e0388cca23eb123e6458780&oe=54B10A09"
)




Comment.create(content: "I love bungee jumping", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I want to go sometime!", commentable_id: 1, commentable_type:  "Image", user_id: 2)
Comment.create(content: "Let's do it!", commentable_id: 1, commentable_type:  "Image", user_id: 3)
Comment.create(content: "When are you guys free?", commentable_id: 1, commentable_type:  "Image", user_id: 4)
Comment.create(content: "I'm so down right now", commentable_id: 1, commentable_type:  "Image", user_id: 6)
Comment.create(content: "NOW!?", commentable_id: 1, commentable_type:  "Image", user_id: 8)
Comment.create(content: "OK!", commentable_id: 1, commentable_type:  "Image", user_id: 9)
Comment.create(content: "YESSS", commentable_id: 1, commentable_type:  "Image", user_id: 10)
Comment.create(content: "YESSSSSS", commentable_id: 1, commentable_type:  "Image", user_id: 12)

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
Follow.create(follower_id: 1, followed_id: 11)
Follow.create(follower_id: 1, followed_id: 12)
Follow.create(follower_id: 2, followed_id: 1)
Follow.create(follower_id: 2, followed_id: 2)
Follow.create(follower_id: 2, followed_id: 3)
Follow.create(follower_id: 2, followed_id: 4)
Follow.create(follower_id: 2, followed_id: 5)
Follow.create(follower_id: 2, followed_id: 6)
Follow.create(follower_id: 2, followed_id: 7)
Follow.create(follower_id: 2, followed_id: 8)
Follow.create(follower_id: 2, followed_id: 9)
Follow.create(follower_id: 3, followed_id: 1)
Follow.create(follower_id: 3, followed_id: 2)
Follow.create(follower_id: 3, followed_id: 3)
Follow.create(follower_id: 3, followed_id: 4)
Follow.create(follower_id: 3, followed_id: 5)
Follow.create(follower_id: 3, followed_id: 6)
Follow.create(follower_id: 3, followed_id: 7)
Follow.create(follower_id: 3, followed_id: 8)
Follow.create(follower_id: 3, followed_id: 9)
Follow.create(follower_id: 4, followed_id: 1)
Follow.create(follower_id: 4, followed_id: 2)
Follow.create(follower_id: 4, followed_id: 3)
Follow.create(follower_id: 4, followed_id: 4)
Follow.create(follower_id: 4, followed_id: 5)
Follow.create(follower_id: 4, followed_id: 6)
Follow.create(follower_id: 4, followed_id: 7)
Follow.create(follower_id: 4, followed_id: 8)
Follow.create(follower_id: 4, followed_id: 9)
Follow.create(follower_id: 5, followed_id: 1)
Follow.create(follower_id: 5, followed_id: 2)
Follow.create(follower_id: 5, followed_id: 3)
Follow.create(follower_id: 5, followed_id: 4)
Follow.create(follower_id: 5, followed_id: 5)
Follow.create(follower_id: 5, followed_id: 6)
Follow.create(follower_id: 5, followed_id: 7)
Follow.create(follower_id: 5, followed_id: 8)
Follow.create(follower_id: 5, followed_id: 9)
Follow.create(follower_id: 6, followed_id: 1)
Follow.create(follower_id: 6, followed_id: 2)
Follow.create(follower_id: 6, followed_id: 3)
Follow.create(follower_id: 6, followed_id: 4)
Follow.create(follower_id: 6, followed_id: 5)
Follow.create(follower_id: 6, followed_id: 6)
Follow.create(follower_id: 6, followed_id: 7)
Follow.create(follower_id: 6, followed_id: 8)
Follow.create(follower_id: 6, followed_id: 9)
Follow.create(follower_id: 7, followed_id: 1)
Follow.create(follower_id: 7, followed_id: 2)
Follow.create(follower_id: 7, followed_id: 3)
Follow.create(follower_id: 7, followed_id: 4)
Follow.create(follower_id: 7, followed_id: 5)
Follow.create(follower_id: 7, followed_id: 6)
Follow.create(follower_id: 7, followed_id: 7)
Follow.create(follower_id: 7, followed_id: 8)
Follow.create(follower_id: 7, followed_id: 9)
Follow.create(follower_id: 8, followed_id: 1)
Follow.create(follower_id: 8, followed_id: 2)
Follow.create(follower_id: 8, followed_id: 3)
Follow.create(follower_id: 8, followed_id: 4)
Follow.create(follower_id: 8, followed_id: 5)
Follow.create(follower_id: 8, followed_id: 6)
Follow.create(follower_id: 8, followed_id: 7)
Follow.create(follower_id: 8, followed_id: 8)
Follow.create(follower_id: 8, followed_id: 9)
Follow.create(follower_id: 9, followed_id: 1)
Follow.create(follower_id: 9, followed_id: 2)
Follow.create(follower_id: 9, followed_id: 3)
Follow.create(follower_id: 9, followed_id: 4)
Follow.create(follower_id: 9, followed_id: 5)
Follow.create(follower_id: 9, followed_id: 6)
Follow.create(follower_id: 9, followed_id: 7)
Follow.create(follower_id: 9, followed_id: 8)
Follow.create(follower_id: 9, followed_id: 9)

Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 1, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 2, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 3, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 4, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 5, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 6, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 7, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 8, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 9, favoritable_type: 'Image', favoritable_id: 16)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 1)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 2)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 3)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 4)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 5)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 6)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 7)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 8)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 9)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 10)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 11)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 12)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 13)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 14)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 15)
Favorite.create(user_id: 10, favoritable_type: 'Image', favoritable_id: 16)
