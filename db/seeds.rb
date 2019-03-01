User.create(
  first_name: "Fritz",
  last_name: "Schack",
  description: "German guy, trying to understand the world of web developing",
  email: "fs40545@yahoo.com",
  password: "passwordfritz",
  remote_profile_picture_url: "https://media.licdn.com/dms/image/C5603AQE0_3696JsA2A/profile-displayphoto-shrink_100_100/0?e=1556755200&v=beta&t=4yMXuXdCF69AN8YN67lyQUlvQRcd1mIxZ3wK4tCvj4A"
)

User.create(
  first_name: "Rutger",
  last_name: "Swirski",
  description: "British guy, who loves fishing",
  email: "rutgerswirski.johan@gmail.com",
  password: "passwordrutger",
  remote_profile_picture_url: "https://lh3.googleusercontent.com/a-/AN66SAwzRVnJe-EvM90b9liSjO6KZcOUqDSO8VtEF0iOdg=s640-rw-il"
)

User.create(
  first_name: "Chris",
  last_name: "Ward",
  description: "Angry Scotsman",
  email: "angryscotsman@gmail.com",
  password: "passwordchris",
  remote_profile_picture_url: "https://uploads-ssl.webflow.com/5bbd08e05ef3cb7ab7978301/5bbd0a1c5ef3cb6f14978861_chriswardmepicAsset%202.png"
)

Space.create(
  user_id: 1,
  name: "WorkSmith",
  address: "450 Smith Street, Collingwood, VIC, 3066, Australia",
  description: "WorkSmith is set up with several rooms, including a bar that can hold 80 standing people, plus a dedicated podcasting room with all equipment provided.",
  price_per_day: 45,
  website: "www.worksmith.io",
  phone: "1800 503 098"
)

Photo.create(
  space_id: 1,
  remote_image_url_url: "https://static1.squarespace.com/static/59fa8ef5bff200bdbc32563c/t/5ac89c5188251b534819bff1/1523096738179/2J9A3880.jpg?format=2500w"
)

Photo.create(
  space_id: 1,
  remote_image_url_url: "https://www.broadsheet.com.au/media/melbourne/images/2018/03/19/135537-6597-078d76731d4f8f79646d81187c5fef2f_3l1LaQg.jpg"
)

Space.create(
  user_id: 2,
  name: "WeWork",
  address: "222 Exhibition Street, Melbourne, VIC, 3000, Australia",
  description: "Situated in one of the city’s most lively neighbourhoods, WeWork’s serviced office near Melbourne Central is the ideal home to grow your business.",
  price_per_day: 85,
  website: "www.wework.com/buildings/222-exhibition-st--melbourne",
  phone: "+61488841974"
)

Photo.create(
  space_id: 2,
  remote_image_url_url: "https://cdn.wework.com/locations/image/2bfa146c-a646-11e8-aa21-1202be33576a/AprA1jrY.jpg?auto=compress&fit=crop&faces=false&dpr=2.625&ixlib=react-8.4.0&h=220&w=450"
)

Photo.create(
  space_id: 2,
  remote_image_url_url: "https://cdn.concreteplayground.com/content/uploads/2017/11/wework2.jpg"
)

Space.create(
  user_id: 3,
  name: "Revolver",
  address: "231 Chapel Street, Prahran, VIC, 3181, Australia",
  description: "Melbourne’s most unique workspace. Offices. Coworking. Espresso. Popups. Located under Revs Nightclub.",
  price_per_day: 70,
  website: "www.revolverlane.com",
  phone: "+61462846223"
)

Photo.create(
  space_id: 3,
  remote_image_url_url: "https://coworker.imgix.net/photos/australia/melbourne/revolver-lane/1-1490824466.JPG"
)

Photo.create(
  space_id: 3,
  remote_image_url_url: "https://coworker.imgix.net/photos/australia/melbourne/revolver-lane/6-1490824466.JPG"
)

Space.create(
  user_id: 2,
  name: "Windsor Workshop",
  address: "Level 1, 115 Chapel Street, Windsor, VIC, 3181, Australia",
  description: "We are a creative hub for the arts / crafts / design movement providing workshops and events  to inspire. We seek out and promote local Melbourne based Artists. We unleash the unexplored creativity in people.",
  price_per_day: 100,
  website: "www.the-windsor-workshop.com",
  phone: "0421 042 251"
)

Photo.create(
  space_id: 4,
  remote_image_url_url: "https://static1.squarespace.com/static/55e7bf78e4b09880734b43ed/t/561fa988e4b0f4418bced78f/1444915620597/the-windsor-workshop-coworking-freelance-studio.jpg?format=1000w"
)

Photo.create(
  space_id: 4,
  remote_image_url_url: "https://cdn.venuemob.com.au/?url=vm-cdn3.s3-ap-southeast-2.amazonaws.com/venues/the-windsor-workshop/files/the-windsor-workshop-cover-5b074696e7843.jpg"
)

Space.create(
  user_id: 3,
  name: "The Cluster",
  address: "Levels 17 & 20/21, 31 Queen St, Melbourne, 3000, Australia",
  description: "The Cluster provides over 2500m² of office space (which includes Australia’s first coworking Penthouse) with both shared work areas and private offices.",
  price_per_day: 125,
  website: "www.thecluster.com.au",
  phone: "03 9008 5980"
)

Photo.create(
  space_id: 5,
  remote_image_url_url: "http://www.creativespaces.net.au/uploads/listing-images/54183/16.jpg"
)

Photo.create(
  space_id: 5,
  remote_image_url_url: "https://coworker.imgix.net/photos/australia/melbourne/the-cluster/15-1490743883.jpg"
)

Space.create(
  user_id: 1,
  name: "Creative Cubes",
  address: "534 Church St, Richmond, VIC, 3121, Australia",
  description: "We are the home of many small, medium and enterprise businesses that operate out of our facility on daily, weekly, monthly and long-term basis. We pride ourselves on being a first-class facility and all you need to do is bring your own device, plug in & focus on what you do best.",
  price_per_day: 35,
  website: "www.creativecubes.co",
  phone: "1300 228 237"
)

Photo.create(
  space_id: 6,
  remote_image_url_url: "https://creativecubes.co/wp-content/uploads/2017/11/CreativeCubes.Co-Property-Cremorne-29.jpg"
)

Photo.create(
  space_id: 6,
  remote_image_url_url: "https://coworkingmag.com/wp-content/uploads/2019/01/Creative-Cubes-Hawthorn-coworking-melbourne-780x405.jpg"
)

Space.create(
  user_id: 2,
  name: "Framework",
  address: "458 Swanston St, Carlton, VIC, Australia",
  description: "Framework is a coworking space full of designers, developers, videographers, copywriters, marketing professionals, and all types of Melbourne creatives. Drop by, spend a few days with us at Framework and see if the Melbourne coworking space and atmosphere is for you.",
  price_per_day: 55,
  website: "www.framework.melbourne",
  phone: "03 9041 2118"
)

Photo.create(
  space_id: 7,
  remote_image_url_url: "https://static1.squarespace.com/static/54657ca3e4b0f579a2c415e2/t/566f7de2dc5cb42a299534ab/1450147339016/_DSC1022.jpg?format=1500w"
)

Photo.create(
  space_id: 7,
  remote_image_url_url: "http://www.creativespaces.net.au/uploads/listing-images/45439/_DSC0938.jpg"
)

Space.create(
  user_id: 3,
  name: "Rotson",
  address: "105 Victoria St, Fitzroy, Australia",
  description: "Co-working studio in the iconic Moran & Cato building",
  price_per_day: 75,
  website: "www.facebook.com/pg/RotsonStudiosFitzroy",
  phone: "0400 044 398"
)

Photo.create(
  space_id: 8,
  remote_image_url_url: "http://www.mariamontes.net/wp-content/uploads/Rotosn_1080_Teagan_Glenane.jpg"
)

Photo.create(
  space_id: 8,
  remote_image_url_url: "https://www.mariamontes.net/wp-content/uploads/Selected_1080px.jpg"
)

Space.create(
  user_id: 2,
  name: "YBF Ventures",
  address: "520 Bourke Street, Melbourne, VIC, 3000, Australia",
  description: "This isn’t another co-working gig. YBF is a specially-designed space of the future, where startups and upstarts can thrive, evolve, raise investment and prepare themselves for success in the global market.",
  price_per_day: 25,
  website: "www.ybfventures.com",
  phone: "1300 554 215"
)

Photo.create(
  space_id: 9,
  remote_image_url_url: "https://ybfventures.com/wp-content/uploads/2018/07/DSC_6860-1000x500.jpg"
)

Photo.create(
  space_id: 9,
  remote_image_url_url: "https://ybfventures.com/wp-content/uploads/2018/11/DSC_0494_5_tonemapped-1000x500.jpg"
)

Space.create(
  user_id: 3,
  name: "Inspire 9",
  address: "41-43 Stewart St, Richmond, VIC, 3121, Australia",
  description: "Inspire9 is the original community-led coworking space for Melbourne’s startups, freelancers and creative entrepreneurs.",
  price_per_day: 35,
  website: "www.inspire9.com",
  phone: "+61 (0)411 072 029"
)

Photo.create(
  space_id: 10,
  remote_image_url_url: "https://inspire9.com/assets/images/content_photos/about-our-community.jpg"
)

Photo.create(
  space_id: 10,
  remote_image_url_url: "https://s3-us-west-2.amazonaws.com/s3.sharedesk.net/venues/gallery/bfbb56bee68d99affaa64f189045d5f2-large.png"
)
