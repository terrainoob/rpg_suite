class AddRaceToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :race_id, :integer, references: :races
  end
end
