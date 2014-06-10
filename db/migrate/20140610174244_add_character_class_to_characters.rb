class AddCharacterClassToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :character_class, index: true
  end
end
