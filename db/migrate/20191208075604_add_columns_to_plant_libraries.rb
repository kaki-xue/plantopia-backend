class AddColumnsToPlantLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :plant_libraries, :family, :string
    add_column :plant_libraries, :soil, :string
    add_column :plant_libraries, :flowering, :string
    add_column :plant_libraries, :careinfo, :string
    add_column :plants, :reminder, :boolean

   # t.string "latin_name"
   #  t.string "average_height"
   #  t.string "light_preference"
   #  t.integer "water_freq_avg"
   #  t.string "name"
   #  t.datetime "created_at", null: false
   #  t.datetime "updated_at", null: false
   #  t.string "image"
   #  t.string "description"
   #  t.bigint "user_id"
