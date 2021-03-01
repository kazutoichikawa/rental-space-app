5.times do
  RentalSpace.create(
    name: Faker::Lorem.word,
    postal_code: '123-4567',
    address: Faker::Lorem.word,
    building: Faker::Lorem.word,
    detail: Faker::Lorem.sentence,
    capacity: 8,
    price: 2000,
  )
end
