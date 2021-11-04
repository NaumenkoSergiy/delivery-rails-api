class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :active

  has_one :category
end
