class Journey < ApplicationRecord
  belongs_to :train
  validates :name, presence: true
  validates :train, presence: true
end
