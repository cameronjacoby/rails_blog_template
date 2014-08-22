post1 = Post.create({title: "Mlkshk Sint",
  author: "Cameron Jacoby",
  content: "Mlkshk sint banjo Cosby sweater. Thundercats PBR leggings delectus consectetur. Kitsch consequat wolf, magna tote bag readymade four loko blog roof party ullamco farm-to-table Carles. Mustache chillwave cliche, laborum pariatur mixtape Thundercats beard scenester skateboard seitan fashion axe culpa. Keffiyeh eu twee single-origin coffee est, trust fund post-ironic. Next level ullamco exercitation keytar, XOXO odio laboris ea bicycle rights anim Brooklyn velit Etsy single-origin coffee. Pug ut aute kitsch small batch.",
  tagline: "Mlkshk sint banjo Cosby sweater",
  image: "http://media-cache-ak0.pinimg.com/736x/84/ec/55/84ec554b04a83eb198eaf53a3dfcac28.jpg"
})

post2 = Post.create({title: "Selfies Meh",
  author: "Cameron Jacoby",
  content: "Selfies meh accusamus est. Wolf Neutra hoodie Bushwick beard assumenda veniam fugiat irony aesthetic, photo booth keffiyeh polaroid. Organic Odd Future Cosby sweater synth 8-bit. Sustainable commodo aesthetic, cardigan McSweeney's four loko mixtape normcore Etsy forage labore hoodie. Bicycle rights raw denim do sustainable chia sriracha, small batch Portland Neutra duis ethnic actually irony reprehenderit. Deep v chambray tofu food truck occaecat. Bitters deserunt consequat put a bird on it, ugh esse mustache Neutra sed mollit.",
  tagline: "Selfies meh accusamus est",
  image: "http://media-cache-ec0.pinimg.com/736x/7c/6a/3f/7c6a3fc822dff341e19ca1c00760434a.jpg"
})

post3 = Post.create({title: "Tousled Literally",
  author: "Cameron Jacoby",
  content: "Tousled literally culpa, anim YOLO four loko sartorial quis. Quis 90's accusamus veniam. Shabby chic gluten-free Truffaut commodo. Deserunt sustainable exercitation, elit sartorial viral adipisicing hashtag hella XOXO meh sed cliche non. Retro you probably haven't heard of them single-origin coffee, messenger bag Truffaut meggings consequat synth. Ea selvage wayfarers, eu accusamus sriracha Blue Bottle consectetur pork belly direct trade. In typewriter YOLO letterpress whatever, photo booth lo-fi keffiyeh tattooed flexitarian.",
  tagline: "Tousled literally culpa, anim YOLO four loko sartorial quis",
  image: "http://media-cache-ec0.pinimg.com/736x/90/12/62/9012623f6111e1e8abc346a426114588.jpg"
})

post4 = Post.create({title: "Sartorial Brooklyn",
  author: "Cameron Jacoby",
  content: "Sartorial Brooklyn keffiyeh, photo booth tofu 3 wolf moon mollit deep v. Ut Pitchfork typewriter Schlitz voluptate. Retro master cleanse proident normcore Portland disrupt gentrify, chia id pop-up Helvetica. Pork belly twee gluten-free, seitan accusamus irure Cosby sweater quis cupidatat keytar deep v butcher keffiyeh mixtape. Flannel fashion axe irony seitan, narwhal cornhole Carles. Thundercats eiusmod farm-to-table cillum mollit, chillwave pour-over et exercitation 8-bit Vice. Whatever quinoa dreamcatcher aesthetic, flannel PBR&B Vice butcher non.",
  tagline: "Sartorial Brooklyn keffiyeh, photo booth tofu 3 wolf moon mollit deep v",
  image: "http://media-cache-ak0.pinimg.com/736x/8e/14/22/8e1422d1f3f8bfceeea06a1ea46b3f75.jpg"
})


roses = Tag.create({name: "roses"})
flowers = Tag.create({name: "flowers"})
apartment = Tag.create({name: "apartment"})
entryway = Tag.create({name: "entryway"})
cabinet = Tag.create({name: "cabinet"})
table = Tag.create({name: "table"})
lamp = Tag.create({name: "lamp"})


post1.tags << roses
post1.tags << flowers
post2.tags << apartment
post2.tags << entryway
post2.tags << cabinet
post3.tags << roses
post3.tags << flowers
post4.tags << apartment
post4.tags << table
post4.tags << lamp


comment1 = Comment.new({title: "Lomo Flannel Wayfarers Mustache",
  author: "Sriracha Austin",
  body: "Lomo flannel wayfarers mustache, try-hard fixie sriracha post-ironic irony trust fund occupy meh pop-up bitters aesthetic."
})

comment2 = Comment.new({title: "Trust Fund Intelligentsia ",
  author: "Sriracha Austin",
  body: "Trust fund Intelligentsia vegan swag, fixie chambray sriracha iPhone Tumblr hoodie Marfa mumblecore kale chips."
})

comment3 = Comment.new({title: "PBR XOXO",
  author: "Thundercats McSweeney",
  body: "PBR XOXO brunch skateboard, cray retro +1 semiotics street art tofu tattooed before they sold out YOLO."
})

post1.comments << comment1
post1.comments << comment3
post2.comments << comment2