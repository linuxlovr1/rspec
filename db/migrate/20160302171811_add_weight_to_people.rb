class AddWeightToPeople < ActiveRecord::Migration
  def change
    add_column :people, :weight, :float
  end
end
