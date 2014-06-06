class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, null: false
      t.string :name, index: true, null: false
      t.integer :level, default: 1, null: false
      t.string :deity
      t.string :homeland
      t.string :alignment, default: 'neutral', null: false
      t.string :size, default: 'medium', null: false
      t.string :gender, default: 'male', null: false
      t.integer :age
      t.string :height
      t.integer :weight
      t.string :hair
      t.string :eyes
      t.integer :str, default: 0, null: false
      t.integer :dex, default: 0, null: false
      t.integer :con, default: 0, null: false
      t.integer :int, default: 0, null: false
      t.integer :wis, default: 0, null: false
      t.integer :cha, default: 0, null: false
      t.integer :max_hp, default: 1, null: false
      t.integer :current_hp, default: 1, null: false

      t.timestamps
    end
  end
end
