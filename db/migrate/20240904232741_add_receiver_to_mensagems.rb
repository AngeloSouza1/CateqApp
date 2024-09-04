class AddReceiverToMensagems < ActiveRecord::Migration[7.2]
  def change
    add_column :mensagems, :receiver_id, :integer
  end
end
