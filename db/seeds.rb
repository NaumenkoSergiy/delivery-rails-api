user = User.find_by(
  name: 'Test User',
  email: 'test@email.com'
)
unless user
  user = User.create!(
    name: 'Test User',
    email: 'test@email.com',
    password: 'password',
    password_confirmation: 'password'
  )
end

(1..20).each do |id|
  Category.find_or_create_by!(name: Faker::Name.name)
end

(1..40).each do |id|
  Product.find_or_create_by!(
    name: Faker::Name.name,
    category: Category.first,
    description: Faker::Lorem.sentences(number: 4),
    price: 5.0,
    active: true
  )
end

user.favorite_products << Product.first(5)
