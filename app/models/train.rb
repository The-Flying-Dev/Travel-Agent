class Train < ApplicationRecord
  has_many :journeys
  validates :name, :capacity, presence: true
end
