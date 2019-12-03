class CreatePlantChats < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_chats do |t|
      t.references :user, foreign_key: true
      t.references :plant, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
