FactoryBot.define do
  factory :product do
    name { Faker::Name.name }
    description { Faker::Lorem.sentences(number: 4) }
    price { 5.0 }
    active { true }
    category { create(:category) }
  end
end
