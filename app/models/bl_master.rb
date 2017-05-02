class BlMaster < ApplicationRecord
  belongs_to :shipping_company
  belongs_to :nvocc
  belongs_to :ship
  has_many :container_list
  has_many :containers, :through => :container_list

	validates :shipping_company, presence: true
    validates :nvocc, presence: true
    validates :commodity_origin, presence:true
    validates :dock_date, presence: true
    validates :travel_code, presence: true
    validates :bl_code, presence: true
    validates :commodity_destination, presence: true
    validates :ship, presence: true
    	
end
  