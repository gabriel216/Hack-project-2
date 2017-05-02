class Client < ApplicationRecord
	has_many :bl_houses

	validates :name, presence: true	
end
