class Ship < ApplicationRecord
  belongs_to :shipping_company

  validates :name, presence: true 
  validates :shipping_company, presence: true
end
