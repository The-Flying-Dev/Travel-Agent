class Cabin < ApplicationRecord
  belongs_to :train
  has_and_belongs_to_many :bookings
  validates :beds, :section, :train, presence: true
  
end
