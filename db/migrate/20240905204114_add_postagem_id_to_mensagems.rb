class AddPostagemIdToMensagems < ActiveRecord::Migration[7.2]
  def change
    add_reference :mensagems, :postagem, foreign_key: true, null: false, default: 1  end
end
