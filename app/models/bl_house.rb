class BlHouse < ApplicationRecord
  belongs_to :nvocc
  belongs_to :client
  belongs_to :bl_master

  validates :bl_master, presence: true
  validates :bl_code, presence: true
  validates :nvocc, presence: true 
  validates :client, presence: true

end


      