class RemoveFaltasAndNotaDesempenhoFromFichaCadastrals < ActiveRecord::Migration[7.2]
  def change
    remove_column :ficha_cadastrals, :faltas, :integer
    remove_column :ficha_cadastrals, :nota_desempenho, :float
  end
end
