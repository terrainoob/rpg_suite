class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name, null: false,  index: true
      t.text :description
      t.string :size
      t.integer :speed
      t.string :url

      t.timestamps
    end
  end
end
