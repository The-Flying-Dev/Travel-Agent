class CreditCard < ApplicationRecord
  belongs_to :customer
  validates :exp_date, :number, :name_on_card, :company, presence: true 

  #attribute to map data values to
  enum company: {
    "American Express" => "AmericanExpress",
    "Visa" => "Visa",
    "MasterCard" => "Mastercard"
  }

end
