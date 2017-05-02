class Container < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :container_type
  has_many :container_list
  has_many :bl_masters, :through => :container_list

  validates :commodity, presence: true 
  validates :container_type, presence: true
  validates :size, presence: true
  validates :character, presence: true
  validates :shipping_company, presence:true
end
