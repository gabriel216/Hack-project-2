  class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :commodity
      t.string :container_type
      t.integer :size
      t.string :character
      t.references :shipping_company, foreign_key: true

      t.timestamps
    end
  end
end
