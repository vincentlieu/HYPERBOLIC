class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :listing, uniqueness: true
end
