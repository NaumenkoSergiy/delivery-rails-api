require 'rails_helper'

describe 'get products', type: :request do
  let!(:products) { FactoryBot.create_list(:product, 20) }

  before { get '/v1/products' }

  it 'returns products' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns products by category' do
    get "/v1/products?category_id=#{Category.first.id}"
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns products by name' do
    get "/v1/products?name=#{products.first.name}"
    expect(JSON.parse(response.body).size).to eq(1)
  end
end
