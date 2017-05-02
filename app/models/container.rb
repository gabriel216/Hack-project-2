class Container < ApplicationRecord
  belongs_to :shipping_company

  validates :commodity, presence: true 
  validates :container_type, presence: true
  validates :size, presence: true
  validates :character, presence: true
  validates :shipping_company, presence:true
end
