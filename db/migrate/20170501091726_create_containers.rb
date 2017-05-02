  class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.string :commodity
      t.decimal :size
      t.string :character
      t.references :container_type, foreign_key: true
      t.references :shipping_company, foreign_key: true

      t.timestamps
    end
  end
end
