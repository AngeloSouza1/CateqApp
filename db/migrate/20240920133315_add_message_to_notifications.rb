class AddMessageToNotifications < ActiveRecord::Migration[7.2]
  def change
    add_column :notifications, :message, :string
  end
end
