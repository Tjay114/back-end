puts "🌱 Seeding Greatness!..."

# Seed your database here
terah_mumuli = User.create(name: "Terah Mumuli", email: "terahmumuli@gmail.com", password_digest: "pw12345678")

john_doe = User.create(name: "John Doe", email: "johndoe23@gmail.com", password_digest: "pw12345678")

terry_kendi = User.create(name: "Terry Kendi", email: "terrykendi@gmail.com", password_digest: "pw12345678")

Destination.create(city: "5426 Mulbary Drive", country:"Mauritius", user_id: terah_mumuli.id)

Destination.create(city: "5574 Luthuli Drive",country:"Mexico", user_id: terah_mumuli.id)

Destination.create(city: "8836 Mashimoni Street", country: "Botwsana", user_id: john_doe.id)

Destination.create(city: "4434 Moi Avenue", country: "Brazil", user_id: john_doe.id)



Trip.create(title: "Road trip", image: "https://www.pexels.com/photo/view-of-tourist-resort-338504/", isFavorite: true)

Trip.create(title: "Baecation", image: "https://www.pexels.com/photo/brown-hut-island-gazebo-38238/", isFavorite: false)

Trip.create(title: "Hiking", image: "https://www.pexels.com/photo/two-person-carrying-black-inflatable-pool-float-on-brown-wooden-bridge-near-waterfalls-1020016/", isFavorite: true)


puts "✅ Done seeding!"