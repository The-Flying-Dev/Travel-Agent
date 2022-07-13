class Cabin < ApplicationRecord
  validates :beds, :section, :train, presence: true
  belongs_to :train
end
