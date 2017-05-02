class Ship < ApplicationRecord
  belongs_to :shipping_company
  has_many :bl_masters

  validates :name, presence: true 
  validates :shipping_company, presence: true
end
