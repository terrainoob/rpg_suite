class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, null: false, index: true
      t.text :description
      t.boolean :untrained
      t.boolean :armor_penalty
      t.string :key_ability

      t.timestamps
    end
  end
end
