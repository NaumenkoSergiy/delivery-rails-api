class V1::FavoritesProductsController < ApplicationController
  before_action :authenticate_user!

  expose :products, -> { current_user.favorite_products }

  def index
    render json: products, status: 200
  end
end
