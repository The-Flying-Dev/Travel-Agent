class Station < ApplicationRecord
  validates :name, :town, presence: true
end
