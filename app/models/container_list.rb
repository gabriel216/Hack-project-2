class ContainerList < ApplicationRecord
  belongs_to :container
  has_many :bl_house

  validates :container, presence: true 
end
