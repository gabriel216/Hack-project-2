class ContainerType < ApplicationRecord
	enum type_of_container: [:standard, :metal, :high_cube, :reefer, :open_top, :flat_rack, :open_side, :tank, :flexi_tank]
	has_many :containers 
end
