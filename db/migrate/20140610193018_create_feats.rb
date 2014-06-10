class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.string :name, null: false, index: true
      t.string :feat_type, nill: false, index: true
      t.text :description
      t.string :url
      t.string :feat_prereq
      t.string :other_prereq
      t.string :benefit
      t.text :normal
      t.text :special

      t.timestamps
    end
  end
end
