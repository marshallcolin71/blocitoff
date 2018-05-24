require 'faker'

15.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker:Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

users = User.all

10.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence,
  )
end

items = Item.all

User.create!(
  email: 'marshallcolin71@gmail.com',
  password: 'password'

  user.skip_confirmation!
)

puts "seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
