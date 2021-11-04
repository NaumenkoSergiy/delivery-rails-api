class Product < ApplicationRecord
  paginates_per 5

  belongs_to :category

  scope :includes_associations, -> { includes(:category) }
  scope :filter_by_category, ->(category_id) do
    joins(:category).where('categories.id = ?', category_id) if category_id
  end
end
