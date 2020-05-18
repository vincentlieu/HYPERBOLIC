class Condition < ApplicationRecord
  has_one :listing
  validates :name, uniqueness: true
end
