class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :name, null: false, index: true
      t.string :armor_type, null:false, index: true, default: 'light'
      t.string :cost
      t.integer :ac_bonus, default: 0
      t.integer :max_dex_bonus, default: 0
      t.integer :armor_check_penalty, default: 0
      t.float :spell_fail, default: 0
      t.integer :speed_30
      t.integer :speed_20
      t.float :weight

      t.timestamps
    end
  end
end
