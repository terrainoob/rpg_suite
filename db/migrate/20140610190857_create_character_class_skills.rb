class CreateCharacterClassSkills < ActiveRecord::Migration
  def change
    create_table :character_class_skills do |t|
      t.references :character_class, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
