User.create(
  first_name: "Coworking",
  last_name: "Dude",
  description: "Cool coworking dude",
  is_host: true
)

User.create(
  first_name: "Working",
  last_name: "Dude",
  description: "Cool working dude",
  is_host: false
)

10.times do
  Space.create(
    name: "Random Coworking Space",
    price_per_day: "$65",
    address: "Very cool address",
    phone: "+61 433 738 831",
    user_id: 1,
    website: "#",
    description: "This is a very cool coworking space."
  )
end
