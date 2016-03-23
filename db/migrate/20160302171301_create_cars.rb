class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :color
      t.integer :year
      t.belongs_to :person

      t.timestamps null: false
    end
  end
end
