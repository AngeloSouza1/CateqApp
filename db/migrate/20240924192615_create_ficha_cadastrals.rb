class CreateFichaCadastrals < ActiveRecord::Migration[7.2]
  def change
    create_table :ficha_cadastrals do |t|
      t.string :nome
      t.string :endereco
      t.date :data_nascimento
      t.string :telefone
      t.integer :faltas
      t.decimal :nota_desempenho
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
