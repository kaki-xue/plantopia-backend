class AddUserToPlantLibraries < ActiveRecord::Migration[5.2]
  def change
    add_reference :plant_libraries, :user, foreign_key: true
  end
end
