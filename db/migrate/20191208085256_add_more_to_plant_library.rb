class AddMoreToPlantLibrary < ActiveRecord::Migration[5.2]
  def change
    add_column :plant_libraries, :temperature, :string
    add_column :plant_libraries, :watering, :string
    add_column :plant_libraries, :fertilizer, :string
  end
end
