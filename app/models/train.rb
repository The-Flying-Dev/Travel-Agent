class Train < ApplicationRecord
  has_many :journeys, dependent: :destroy
  validates :name, :capacity, presence: true
end
