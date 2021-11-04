FactoryBot.define do
  factory :user do
    name { 'Test User' }
    email { 'test@email.com' }
    password { 'password' }
  end
end
