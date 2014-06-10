class CreateCharacterFeats < ActiveRecord::Migration
  def change
    create_table :character_feats do |t|
      t.references :character, index: true
      t.references :feat, index: true

      t.timestamps
    end
  end
end
