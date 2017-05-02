class CreateBlMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :bl_masters do |t|
      t.references :shipping_company, foreign_key: true
      t.references :nvocc, foreign_key: true
      t.string :commodity_origin
      t.date :dock_date
      t.string :travel_code
      t.integer :bl_code
      t.string :commodity_destination
      t.references :ship, foreign_key: true

      t.timestamps
    end
  end
end
