class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name, null: false, index: true
      t.string :weapon_type, index: true, default: 'simple'
      t.string :cost
      t.string :dmg_s
      t.string :dmg_m
      t.string :critical
      t.integer :range
      t.float :weight
      t.string :damage_type
      t.string :special
      t.string :ammunition

      t.timestamps
    end
  end
end
