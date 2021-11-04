require 'rails_helper'

describe 'get favorites products', type: :request do
  let(:products) { FactoryBot.create_list(:product, 3) }
  let(:user) { FactoryBot.create(:user) }

  it 'returns status code 200' do
    get '/v1/favorites_products', headers: create_auth_header_from_scratch
    expect(response).to have_http_status(:success)
  end

  it 'returns favorited products' do
    user.favorite_products << products

    get '/v1/favorites_products', headers: create_auth_header_from_scratch(user)
    expect(JSON.parse(response.body).size).to eq(3)
  end
end
