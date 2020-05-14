class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :condition
  belongs_to :category
  belongs_to :brand
  has_one_attached :picture
  has_many :favourites
  has_many :favourited_by, through: :favourite_listings, source: :user
  validates :title, :price, :condition_id, :brand_id, :category_id, presence: :true
end
