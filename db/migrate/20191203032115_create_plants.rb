class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.references :user, foreign_key: true
      t.string :nickname
      t.string :image
      t.integer :water_frequency

      t.timestamps
    end
  end
end
