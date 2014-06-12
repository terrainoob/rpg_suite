class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :school
      t.string :subschool
      t.text :description
      t.text :short_description
      t.string :casting_time
      t.string :components
      t.boolean :verbal
      t.boolean :somatic
      t.boolean :material
      t.boolean :focus
      t.boolean :divine_focus
      t.string :range
      t.string :area
      t.string :effect
      t.string :targets
      t.string :duration
      t.boolean :dismissable
      t.boolean :shapeable
      t.string :saving_throw
      t.string :spell_resistance
      t.integer :material_costs
      t.string :url
      t.string :source

      t.timestamps
    end
    add_index :spells, :name
    add_index :spells, :school
    add_index :spells, :subschool
  end
end
