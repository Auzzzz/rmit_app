class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :desc
      t.integer :user_id

      t.timestamps
    end
     add_index :courses, :name, unique: true
  end
end
