class AddImageToPlantLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :plant_libraries, :image, :string
  end
end
