class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :condition
  belongs_to :category
  belongs_to :brand
  has_one_attached :picture
  validates :title, :price, :condition_id, :brand_id, :category_id, presence: :true
end
