10.times do
  Item.create!(
    name: Faker::Lorem.sentence,
  )
end

User.create!(
  email: 'marshallcolin71@gmail.com',
  password: 'password'
)

puts "seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
