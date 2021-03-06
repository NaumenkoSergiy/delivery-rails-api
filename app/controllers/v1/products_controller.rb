class V1::ProductsController < ApplicationController
  expose :products, -> do
    Product.includes_associations
           .filter_by_category(params[:category_id])
           .filter_by_name(params[:name])
           .page(params[:page] || 0)
  end

  def index
    render json: products
  end
end
