class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :condition
  belongs_to :category
  belongs_to :brand
  has_one_attached :picture
end
