class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name, null: false, index: true
      t.text :description
      t.string :hit_die
      t.string :start_wealth
      t.integer :skills_per_level
      t.string :skills_per_level_mod

      t.timestamps
    end
  end
end
