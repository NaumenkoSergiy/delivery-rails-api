class V1::FavoritesController < ApplicationController
  before_action :authenticate_user!

  expose :product

  def create
    render json: FavoritedProduct.find_or_create_by(product: product, user: current_user), status: 200
  end

  def destroy
    favorited_product = current_user.favorited_products.find_by(product_id: params[:product_id])
    favorited_product.destroy if favorited_product
    render json: {}, status: 200
  end
end
