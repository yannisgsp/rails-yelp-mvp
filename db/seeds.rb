Restaurant.destroy_all

mcdonalds = { name: 'McDonalds', address: '8 rue Dupont, Toulouse', phone_number: '0653726487', category: 'french' }
burgerking = { name: 'BurgerKing', address: '14 avenue Ramos, Paris', phone_number: '0572635173', category: 'belgian' }
subway = { name: 'Subway', address: '32 boulevard Ntamack, Pau', phone_number: '0742342874', category: 'italian' }
pizzahut = { name: 'PizzaHut', address: '58 chemin de Mauvaka, Marseille', phone_number: '0632113374', category: 'french' }
poketeria = { name: 'Poketeria', address: '2 allée des Poitrenaud, Lille', phone_number: '0623654496', category: 'chinese' }

[mcdonalds, burgerking, subway, pizzahut, poketeria].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end

# possible de faire :
# 5.times do
#   Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: Restaurant::CATEGORIES.sample
#   )
# end
