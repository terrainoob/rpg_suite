class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :equipment_type
      t.string :cost
      t.float :weight
      t.integer :craft_dc

      t.timestamps
    end
  end
end
