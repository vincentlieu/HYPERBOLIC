class FavouriteListing < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  #Validates that a user can only favourite a listing once
  validates :user, uniqueness: { scope: :listing, message: "Already favourited" }
end
