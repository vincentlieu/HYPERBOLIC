class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :condition
  belongs_to :category
  belongs_to :brand
  has_one_attached :picture

  has_many :favourite_listings, dependent: :destroy
  has_many :favourited_by, through: :favourite_listings, source: :user

  has_one :purchase, dependent: :destroy

  validates :title, :price, :condition_id, :brand_id, :category_id, presence: :true
  validates :price, numericality: { greater_than: 0 }
end
