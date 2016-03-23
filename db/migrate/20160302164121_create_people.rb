class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :age
      t.string :race
      t.string :hair_color
      t.string :eye_color
      t.boolean :alive, default: true
      t.boolean :married

      t.timestamps null: false
    end
  end
end
