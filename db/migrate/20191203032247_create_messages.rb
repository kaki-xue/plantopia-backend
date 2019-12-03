class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.boolean :is_user
      t.string :text
      t.references :plant_chat, foreign_key: true

      t.timestamps
    end
  end
end
