class CreateActiveConditions < ActiveRecord::Migration
  def change
    create_table :active_conditions do |t|
      t.references :condition, index: true
      t.references :conditionable, polymorphic: true

      t.timestamps
    end

    add_index :active_conditions, ["conditionable_id", "conditionable_type"], unique: true, name: "index_active_conditions_on_conditionable"
  end
end
