class V1::ProductsController < ApplicationController
  expose :products, -> { Product.all.includes(:category).page(params[:page] || 0) }

  def index
    render json: products
  end
end
