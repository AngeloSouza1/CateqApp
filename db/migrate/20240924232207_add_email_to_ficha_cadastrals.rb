class AddEmailToFichaCadastrals < ActiveRecord::Migration[7.2]
  def change
    add_column :ficha_cadastrals, :email, :string
  end
end
