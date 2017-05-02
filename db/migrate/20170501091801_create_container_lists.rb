class CreateContainerLists < ActiveRecord::Migration[5.0]
  def change
    create_table :container_lists do |t|
      t.references :container, foreign_key: true

      t.timestamps
    end
  end
end
