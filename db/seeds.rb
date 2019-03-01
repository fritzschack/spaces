User.create(
  first_name: "Fritz",
  last_name: "Schack",
  description: "German guy, trying to understand the world of web developing",
  email: "fs40545@yahoo.com",
  password: "passwordfritz"
)

User.create(
  first_name: "Rutger",
  last_name: "Swirski",
  description: "British guy, who loves fishing",
  email: "rutgerswirski.johan@gmail.com",
  password: "passwordrutger"
)

User.create(
  first_name: "Chris",
  last_name: "Ward",
  description: "Angry Scotsman",
  email: "angryscotsman@gmail.com",
  password: "passwordchris"
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

Space.create(
  user_id: 2,
  name: "WeWork",
  address: "222 Exhibition Street, Melbourne, VIC, 3000, Australia",
  description: "Situated in one of the city’s most lively neighbourhoods, WeWork’s serviced office near Melbourne Central is the ideal home to grow your business.",
  price_per_day: 85,
  website: "www.wework.com/buildings/222-exhibition-st--melbourne",
  phone: "+61488841974"
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

Space.create(
  user_id: 2,
  name: "Windsor Workshop",
  address: "Level 1, 115 Chapel Street, Windsor, VIC, 3181, Australia",
  description: "We are a creative hub for the arts / crafts / design movement providing workshops and events  to inspire. We seek out and promote local Melbourne based Artists. We unleash the unexplored creativity in people.",
  price_per_day: 100,
  website: "www.the-windsor-workshop.com",
  phone: "0421 042 251"
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

Space.create(
  user_id: 1,
  name: "Creative Cubes",
  address: "534 Church St, Richmond, VIC, 3121, Australia",
  description: "We are the home of many small, medium and enterprise businesses that operate out of our facility on daily, weekly, monthly and long-term basis. We pride ourselves on being a first-class facility and all you need to do is bring your own device, plug in & focus on what you do best.",
  price_per_day: 35,
  website: "www.creativecubes.co",
  phone: "1300 228 237"
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

Space.create(
  user_id: 3,
  name: "Rotson",
  address: "105 Victoria St, Fitzroy, Australia",
  description: "Co-working studio in the iconic Moran & Cato building",
  price_per_day: 75,
  website: "www.facebook.com/pg/RotsonStudiosFitzroy",
  phone: "0400 044 398"
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

Space.create(
  user_id: 3,
  name: "Inspire 9",
  address: "41-43 Stewart St, Richmond, VIC, 3121, Australia",
  description: "Inspire9 is the original community-led coworking space for Melbourne’s startups, freelancers and creative entrepreneurs.",
  price_per_day: 35,
  website: "www.inspire9.com",
  phone: "+61 (0)411 072 029"
)
