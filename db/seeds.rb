# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Picture.destroy_all
Tag.destroy_all
#PictureTag.destroy_all

u1 = User.create(username: "Jack", password: "123456abc",email:"jack98765@gmail.com")
u2 = User.create(username: "Jess", password: "123456efd",email:"jess98765@gmail.com")
u3 = User.create(username: "Jenni", password: "123456xyz",email:"jenni98765@gmail.com")
u4 = User.create(username: "Cathey", password: "9876456zzz",email:"cathey98765@gmail.com")
#tags = ["date-night", "hang-out-with-friends","get-awaty","new-restaurant","take-a-walk","pandemic"]
tag1 = Tag.create(tag_name:"date-night")
tag2 = Tag.create(tag_name:"hang-out-with-friends")
tag3 = Tag.create(tag_name:"get-awaty")
tag4 = Tag.create(tag_name:"new-restaurant")
tag5 = Tag.create(tag_name:"take-a-walk")
tag6 = Tag.create(tag_name:"pandemic")

pic1 = Picture.create(title:"Outdoor forest spa",description:"Such a wonderful experience.",user_id:1, url:"https://cdn.blessthisstuff.com/imagens/stuff/sky-haus-aframe-cabin-airbnb.jpg")
pic2 = Picture.create(title:"Sky Haus",description:"Breath taking.",user_id:2, url:"https://images.squarespace-cdn.com/content/v1/52960b82e4b098fd7ea43031/1569970345633-T0UDLWCD8DFAPFRN8L4W/ke17ZwdGBToddI8pDm48kOeC2_vIwtkNO4KLfB1JIsJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UedT6MCuDrG0_6iPwXLGF1669zXNhvZ0Gt3DqtjtSHkNlcTmcwU-Ed_fLjLxuPb0KQ/website-foss-haus.jpg?format=500w")

pic3 = Picture.create(title:"Leavenworth",description:"Fall.",user_id:3, url:"https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/09/Icicle-TV-Saturday-or-Sunday-morning-1.jpg")
pic4 = Picture.create(title:"Leavenworth",description:"Love the pork knuckle.",user_id:3, url:"https://media-cdn.tripadvisor.com/media/photo-s/02/3b/dc/9e/schweinshaxe-and-beer.jpg")

pic5 = Picture.create(title:"Cat café",description:"Such a wonderful experience.",user_id:1, url:"https://res.cloudinary.com/sagacity/image/upload/c_crop,h_2467,w_2000,x_0,y_368/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/SeattleMet032417_2_dpxac4.jpg")
pic6 = Picture.create(title:"NEKO Cat Cafe Seattle",description:"Cute cats!",user_id:4, url:"https://pbs.twimg.com/media/D7DSZ6uVsAAyGU9.jpg:large")

pic7 = Picture.create(title:"Self care",description:"Yoga at home during self-quarantine!",user_id:4, url:"https://images.squarespace-cdn.com/content/5af32d799f877022eaf0a1da/1559584986584-QC2O4B2DNQBZBM9I4QDW/20190515_214442.jpg?format=1000w&content-type=image%2Fjpeg")
pic8 = Picture.create(title:"Today's outfit.",description:"Just going to the grocery store",user_id:3, url:"https://fox8.com/wp-content/uploads/sites/12/2020/03/90765054_10157251393369499_3585470494343692288_n-1.jpg")
pic9 = Picture.create(title:"New best friend.",description:"What I do all day...",user_id:2, url:"https://d22ir9aoo7cbf6.cloudfront.net/wp-content/uploads/sites/4/2020/03/Things-to-do-at-home-during-coronavirus-self-quarantine-1-Bali-Indonesia.jpeg")

pic10 = Picture.create(title:"Bubble tea",description:"Jess and I had such a great time!",user_id:3, url:"https://www.discoverslu.com/wp-content/uploads/MooBar5.jpg")

pt1 = PictureTag.create(tag:tag1,picture:pic1)
pt2 = PictureTag.create(tag:tag3,picture:pic1)
pt3 = PictureTag.create(tag:tag3,picture:pic2)
pt4 = PictureTag.create(tag:tag3,picture:pic3)
pt5 = PictureTag.create(tag:tag5,picture:pic3)
pt6 = PictureTag.create(tag:tag3,picture:pic4)
pt7 = PictureTag.create(tag:tag4,picture:pic4)
pt8 = PictureTag.create(tag:tag2,picture:pic4)
pt9 = PictureTag.create(tag:tag2,picture:pic5)
pt10 = PictureTag.create(tag:tag2,picture:pic6)
pt11 = PictureTag.create(tag:tag6,picture:pic7)
pt12= PictureTag.create(tag:tag6,picture:pic8)
pt13= PictureTag.create(tag:tag6,picture:pic9)
pt14 = PictureTag.create(tag:tag2,picture:pic10)

comment1 = Comment.create(user:u1,picture:pic1,content:"Nice")
comment2 = Comment.create(user:u2,picture:pic1,content:"Love it")
comment3 = Comment.create(user:u3,picture:pic1,content:"I went there too!")