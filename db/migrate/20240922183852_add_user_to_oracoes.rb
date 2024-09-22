class AddUserToOracoes < ActiveRecord::Migration[7.2]
  def change
    add_reference :oracoes, :user , foreign_key: true
  end
end
