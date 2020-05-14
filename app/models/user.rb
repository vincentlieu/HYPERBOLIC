class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar

  has_many :listings, dependent: :destroy

  has_many :favourite_listings, dependent: :destroy
  has_many :favourites, through: :favourite_listings, source: :listing

  validates :full_name, presence: true
end
