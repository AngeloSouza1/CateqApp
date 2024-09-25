class AddCatequistaToFichaCadastrals < ActiveRecord::Migration[7.2]
  def change
    add_column :ficha_cadastrals, :catequista_id, :integer
    add_index :ficha_cadastrals, :catequista_id
    add_foreign_key :ficha_cadastrals, :users, column: :catequista_id
  end
end
