class CreateCharacterSkills < ActiveRecord::Migration
  def change
    create_table :character_skills do |t|
      t.references :character, null: false, index: true
      t.references :skill, null: false, index: true
      t.integer :ranks, null: false, default: 0
      t.integer :ability_mod, null: false, default: 0
      t.integer :class_mod, null: false, default: 0
      t.integer :race_mod, null: false, default: 0
      t.integer :misc_mod, null: false, default: 0

      t.timestamps
    end
  end
end
