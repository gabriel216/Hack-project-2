class ShippingCompany < ApplicationRecord
	has_many :ships 
	has_many :containers
	has_many :bl_masters
	has_many :nvocc, :through => :bl_masters 

	validates :name, presence: true 
end
