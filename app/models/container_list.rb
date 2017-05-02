class ContainerList < ApplicationRecord
  belongs_to :container
  belongs_to :bl_master

  validates :container, presence: true 
end
