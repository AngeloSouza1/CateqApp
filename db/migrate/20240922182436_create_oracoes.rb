class CreateOracoes < ActiveRecord::Migration[7.2]
  def change
    create_table :oracoes do |t|
      t.string :titulo
      t.text :conteudo

      t.timestamps
    end
  end
end
