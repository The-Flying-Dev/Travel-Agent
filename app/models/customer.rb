class Customer < ApplicationRecord
  has_one :address
  has_many :credit_cards
  has_many :bookings
  validates :last_name, :first_name, presence: true
end
