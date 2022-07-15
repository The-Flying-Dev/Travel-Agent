class Journey < ApplicationRecord
  belongs_to :train
  has_many :bookings
  validates :name, presence: true
  validates :train, presence: true

  #search method used to filter out Journeys
  def self.search(term)
    if term 
      where('name LIKE?', "%#{term}%")
    else 
      all
    end
  end


end
