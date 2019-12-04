class AddDescriptionToPlantLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :plant_libraries, :description, :string
  end
end
