class CreatePlantLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_libraries do |t|
      t.string :latin_name
      t.string :average_height
      t.string :light_preference
      t.integer :water_freq_avg
      t.string :name
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
