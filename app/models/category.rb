class Category < ApplicationRecord
  has_one :listing
  validates :name, uniqueness: true
end
