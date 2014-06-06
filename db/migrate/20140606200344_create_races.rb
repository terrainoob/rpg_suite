class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.references :user, index: true
      t.string :name, index: true
      t.text :description
      t.string :size
      t.integer :speed

      t.timestamps
    end
  end
end
