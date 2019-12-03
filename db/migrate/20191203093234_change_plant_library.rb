class ChangePlantLibrary < ActiveRecord::Migration[5.2]
  def change
    remove_reference :plant_libraries, :plant, index: true, foreign_key: true
    add_reference :plants, :plant_library, index: true, foreign_key: true
  end
end
