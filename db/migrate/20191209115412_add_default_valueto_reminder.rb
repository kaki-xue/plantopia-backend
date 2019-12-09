class AddDefaultValuetoReminder < ActiveRecord::Migration[5.2]
  def change
        change_column :plants, :reminder, :boolean, default: false

  end
end
