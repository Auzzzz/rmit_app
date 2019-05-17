class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name

      t.timestamps
    end
     add_index :locations, :id, unique: true
  end
end
