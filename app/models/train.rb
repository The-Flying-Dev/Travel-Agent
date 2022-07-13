class Train < ApplicationRecord
  has_many :cabins
  validates :name, :capacity, presence: true
end
