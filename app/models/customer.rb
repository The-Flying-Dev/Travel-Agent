class Customer < ApplicationRecord
  has_one :address
  has_many :credit_cards
  has_many :bookings
  validates :last_name, :first_name, :has_good_credit, presence: true
end
