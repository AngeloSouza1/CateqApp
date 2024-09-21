class AddMessageTypeToNotifications < ActiveRecord::Migration[7.2]
  def change
    add_column :notifications, :message_type, :string
  end
end
