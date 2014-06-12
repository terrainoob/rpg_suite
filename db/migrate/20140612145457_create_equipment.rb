class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name, null: false, index: true
      t.string :equipment_type, null: false, index: true, default: 'gear'
      t.string :cost
      t.float :weight
      t.integer :craft_dc

      t.timestamps
    end
  end
end
