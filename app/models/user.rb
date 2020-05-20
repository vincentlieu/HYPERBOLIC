class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar

  has_many :listings, dependent: :destroy

  has_many :favourite_listings, dependent: :destroy
  has_many :favourites, through: :favourite_listings, source: :listing

  has_many :purchases, dependent: :destroy

  validates :full_name, presence: true
end
